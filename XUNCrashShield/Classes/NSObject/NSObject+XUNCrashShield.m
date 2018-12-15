//
//  NSObject+XUNCrashShield.m
//  XUNCrashShield
//
//  Created by 陶埙 on 13/12/2018.
//  Copyright © 2018 xun. All rights reserved.
//

#import "NSObject+XUNCrashShield.h"

void unimplementationMethod(id obj, SEL selector) {
    assert(0);
}

@implementation NSObject (XUNCrashShield)

+ (void)addCrashField {

    kWillSwizzleInstanceMethod(NSObject, NSObject, resolveClassMethod:);
    kWillSwizzleInstanceMethod(NSObject, NSObject, resolveInstanceMethod:);
    kWillSwizzleInstanceMethod(NSObject, NSObject, setValue:forKey:);
    kWillSwizzleInstanceMethod(NSObject, NSObject, valueForKey:);
}

+ (BOOL)kSwizzleMethodWithClass(NSObject, resolveClassMethod:(SEL)sel) {
    
    class_addMethod(self, sel, (IMP)unimplementationMethod, "v@:");
    return YES;
}

+ (BOOL)kSwizzleMethodWithClass(NSObject, resolveInstanceMethod:(SEL)sel) {
    class_addMethod(self, sel, (IMP)unimplementationMethod, "v@:");
    return YES;
}

- (void)kSwizzleMethodWithClass(NSObject, setValue:(id)value forKey:(NSString *)key) {
    if (!key) {
        NSAssert(0, @"key为空");
        return;
    }
    [self kSwizzleMethodWithClass(NSObject, setValue:value forKey:key)];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    NSAssert(0, @"key未定义");
}

- (id)kSwizzleMethodWithClass(NSObject, valueForKey:(NSString *)key) {
    if (!key) {
        NSAssert(0, @"key为空");
        return nil;
    }
    return [self kSwizzleMethodWithClass(NSObject, valueForKey:key)];
}

- (id)valueForUndefinedKey:(NSString *)key {
    NSAssert(0, @"key未定义");
    return nil;
}

@end
