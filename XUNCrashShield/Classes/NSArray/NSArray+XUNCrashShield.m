//
//  NSArray+XUNSafe.m
//  XUNCrashShield
//
//  Created by 陶埙 on 13/12/2018.
//  Copyright © 2018 xun. All rights reserved.
//

#import "NSArray+XUNCrashShield.h"
#import "Macro.h"

@implementation NSArray (XUNCrashShield)

+ (void)addCrashField {
    
    kWillSwizzleInstanceMethod(__NSSingleObjectArrayI, NSArray, objectAtIndex:);
    kWillSwizzleInstanceMethod(__NSArrayI, NSArray, objectAtIndex:);
    kWillSwizzleInstanceMethod(__NSArray0, NSArray, objectAtIndex:);
    kWillSwizzleInstanceMethod(__NSPlaceholderArray, NSArray, initWithObjects:count:);
}

#pragma mark - 下标访问数组

- (id) kSwizzleMethodWithClass(__NSSingleObjectArrayI, objectAtIndex:(NSUInteger)index) {
    
    if (index >= self.count) {
        NSAssert(0, @"访问数组越界");
        return nil;
    }
    return [self kSwizzleMethodWithClass(__NSSingleObjectArrayI, objectAtIndex:index)];
}

- (id) kSwizzleMethodWithClass(__NSArrayI, objectAtIndex:(NSUInteger)index) {
    
    if (index >= self.count) {
        NSAssert(0, @"访问数组越界");
        return nil;
    }
    return [self kSwizzleMethodWithClass(__NSArrayI, objectAtIndex:index)];
}

- (id) kSwizzleMethodWithClass(__NSArray0, objectAtIndex:(NSUInteger)index) {
    
    if (index >= self.count) {
        NSAssert(0, @"访问数组越界");
        return nil;
    }
    return [self kSwizzleMethodWithClass(__NSArray0, objectAtIndex:index)];
}

#pragma mark - 初始化

- (NSArray *)kSwizzleMethodWithClass(__NSPlaceholderArray, initWithObjects:(id  _Nonnull const __unsafe_unretained * _Nonnull)objects count:(NSUInteger)count) {
    
    if (objects == nil) {
        if (count == 0) {
            return [self kSwizzleMethodWithClass(__NSPlaceholderArray, initWithObjects:objects count:count)];
        }
        else {
            NSAssert(0, @"空元素初始化数组");
        }
        
        return nil;
    }
    
    @try {
        return [self kSwizzleMethodWithClass(__NSPlaceholderArray, initWithObjects:objects count:count)];
    }
    @catch (NSException *e) {
        NSAssert(0, @"空元素初始化数组");
        [e save];
        return nil;
    }
    @finally {

    }
}

@end
