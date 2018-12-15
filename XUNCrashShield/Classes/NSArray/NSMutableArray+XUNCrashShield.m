//
//  NSMutableArray+XUNCrashShield.m
//  XUNCrashShield
//
//  Created by 陶埙 on 13/12/2018.
//  Copyright © 2018 xun. All rights reserved.
//

#import "NSMutableArray+XUNCrashShield.h"
#import "Macro.h"

@implementation NSMutableArray (XUNCrashShield)

+ (void)addCrashField {
    
    kWillSwizzleInstanceMethod(__NSArrayM, NSMutableArray, objectAtIndex:);
    kWillSwizzleInstanceMethod(__NSArrayM, NSMutableArray, insertObject:atIndex:);
    kWillSwizzleInstanceMethod(__NSArrayM, NSMutableArray, removeObjectsInRange:);
    kWillSwizzleInstanceMethod(__NSArrayM, NSMutableArray, replaceObjectAtIndex:withObject:);
}

- (id) kSwizzleMethodWithClass(__NSArrayM, objectAtIndex:(NSUInteger)index) {
    
    if (index >= self.count) {
        NSAssert(0, @"访问数组越界");
        return nil;
    }
    return [self kSwizzleMethodWithClass(__NSArrayM, objectAtIndex:index)];
}

- (void) kSwizzleMethodWithClass(__NSArrayM, insertObject:(id)anObject atIndex:(NSUInteger)index) {
    
    if (index > self.count) {
        NSAssert(0, @"访问数组越界");
        return;
    }
    
    if (!anObject) {
        NSAssert(0, @"插入空对象");
        return;
    }
    [self kSwizzleMethodWithClass(__NSArrayM, insertObject:anObject atIndex:index)];
}

- (void) kSwizzleMethodWithClass(__NSArrayM, removeObjectsInRange:(NSRange)range) {
    
    if (range.location == NSNotFound ||
        range.length + range.location > self.count) {
        NSAssert(0, @"删除元素下标越界");
        return;
    }
    
    [self kSwizzleMethodWithClass(__NSArrayM, removeObjectsInRange:range)];
}

- (void)kSwizzleMethodWithClass(__NSArrayM, replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject) {
    
    if (index >= self.count) {
        NSAssert(0, @"替换元素下标越界");
        return;
    }
    
    if (!anObject) {
        NSAssert(0, @"替换元素元素为空");
        return;
    }
    
    [self kSwizzleMethodWithClass(__NSArrayM, replaceObjectAtIndex:index withObject:anObject)];
}

@end
