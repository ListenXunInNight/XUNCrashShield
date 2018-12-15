//
//  NSDictionary+XUNCrashShield.m
//  XUNCrashShield
//
//  Created by 陶埙 on 14/12/2018.
//  Copyright © 2018 xun. All rights reserved.
//

#import "NSDictionary+XUNCrashShield.h"

@implementation NSDictionary (XUNCrashShield)

+ (void)addCrashField {
//    __NSPlaceholderDictionary
    kWillSwizzleInstanceMethod(__NSPlaceholderDictionary, NSDictionary, initWithObjects:forKeys:count:);
    kWillSwizzleInstanceMethod(NSDictionary, NSDictionary, initWithObjects:forKeys:);
}

- (instancetype)kSwizzleMethodWithClass(__NSPlaceholderDictionary, initWithObjects:(id  _Nonnull const [])objects forKeys:(id<NSCopying>  _Nonnull const [])keys count:(NSUInteger)cnt) {
    
    for (int i = 0; i < cnt; i++) {
        if (!keys[i] || !objects[i]) {
            NSAssert(0, @"空键值对初始化字典");
            return nil;
        }
    }
    
    return [self kSwizzleMethodWithClass(__NSPlaceholderDictionary, initWithObjects:objects forKeys:keys count:cnt)];
}

- (instancetype)kSwizzleMethodWithClass(NSDictionary, initWithObjects:(NSArray *)objects forKeys:(NSArray<id<NSCopying>> *)keys) {
    
    if (keys.count != objects.count) {
        NSAssert(0, @"键值对数量不等");
        return nil;
    }
    
    return [self kSwizzleMethodWithClass(NSDictionary, initWithObjects:objects forKeys:keys)];
}

@end
