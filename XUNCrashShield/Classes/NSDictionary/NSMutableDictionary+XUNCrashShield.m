//
//  NSMutableDictionary+XUNCrashShield.m
//  XUNCrashShield
//
//  Created by 陶埙 on 14/12/2018.
//  Copyright © 2018 xun. All rights reserved.
//

#import "NSMutableDictionary+XUNCrashShield.h"

@implementation NSMutableDictionary (XUNCrashShield)

+ (void)addCrashField {
//    __NSDictionaryM
    
//    kWillSwizzleInstanceMethod(__NSDictionaryM, NSMutableDictionary, setObject:forKey:);
//    kWillSwizzleInstanceMethod(__NSDictionaryM, NSMutableDictionary, removeObjectForKey:);
}

- (void) kSwizzleMethodWithClass(__NSDictionaryM, setObject:(id)anObject forKey:(id<NSCopying>)aKey) {
    
//    if (!aKey) {
//        if (anObject) {
//            NSAssert(0, @"插入字典键键为空");
//            return;
//        }
//    }
//    else if (!anObject){
//        NSAssert(0, @"插入空键值为空");
//        return;
//    }
    
    [self kSwizzleMethodWithClass(__NSDictionaryM, setObject:anObject forKey:aKey)];
}

- (void) kSwizzleMethodWithClass(__NSDictionaryM, removeObjectForKey:(id)aKey) {
    
    if (!aKey) {
        NSAssert(0, @"欲移除的Key为空");
        return;
    }
    
    [self kSwizzleMethodWithClass(__NSDictionaryM, removeObjectForKey:aKey)];
}

@end
