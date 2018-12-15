//
//  Macro.h
//  XUNCrashShield
//
//  Created by 陶埙 on 13/12/2018.
//  Copyright © 2018 xun. All rights reserved.
//

#import <objc/runtime.h>
#import "NSException+XUNHandler.h"


#define kWillSwizzleClassMethod(CLS_1, CLS_2, SELECTOR) do {\
Method method1 = class_getClassMethod(NSClassFromString(@#CLS_1), @selector(SELECTOR));\
Method method2 = class_getClassMethod(NSClassFromString(@#CLS_2), @selector(xun_swizzle__##CLS_1##__##SELECTOR));\
method_exchangeImplementations(method1, method2);\
} while(0);

#define kWillSwizzleInstanceMethod(CLS_1, CLS_2, SELECTOR) do {\
Method method1 = class_getInstanceMethod(NSClassFromString(@#CLS_1), @selector(SELECTOR));\
Method method2 = class_getInstanceMethod(NSClassFromString(@#CLS_2), @selector(xun_swizzle__##CLS_1##__##SELECTOR));\
method_exchangeImplementations(method1, method2);\
} while(0);

#define kSwizzleMethodWithClass(CLASS, SELECTOR) xun_swizzle__##CLASS##__##SELECTOR
