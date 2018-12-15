//
//  UIView+XUNCrashShield.m
//  XUNCrashShield
//
//  Created by 陶埙 on 14/12/2018.
//  Copyright © 2018 xun. All rights reserved.
//

#import "UIView+XUNCrashShield.h"

@implementation UIView (XUNCrashShield)

+ (void)addCrashField {
    
    kWillSwizzleInstanceMethod(UIView, UIView, addSubview:);
}

- (void)kSwizzleMethodWithClass(UIView, addSubview:(UIView *)view) {
    
    if (view == self) {
        NSAssert(0, @"添加自身");
        return;
    }
    
    [self kSwizzleMethodWithClass(UIView, addSubview:view)];
}

@end
