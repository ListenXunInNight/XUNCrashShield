//
//  CALayer+XUNCrashShield.m
//  XUNCrashShield
//
//  Created by 陶埙 on 14/12/2018.
//  Copyright © 2018 xun. All rights reserved.
//

#import "CALayer+XUNCrashShield.h"

@implementation CALayer (XUNCrashShield)

+ (void)addCrashField {
    
    kWillSwizzleInstanceMethod(CALayer, CALayer, addSublayer:);
}

- (void) kSwizzleMethodWithClass(CALayer, addSublayer:(CALayer *)layer) {
    
    if (layer == self) {
        NSAssert(0, @"添加自身");
        return;
    }
    
    [self kSwizzleMethodWithClass(CALayer, addSublayer:layer)];
}

@end
