//
//  NSSet+XUNCrashShield.m
//  XUNCrashShield
//
//  Created by 陶埙 on 14/12/2018.
//  Copyright © 2018 xun. All rights reserved.
//

#import "NSSet+XUNCrashShield.h"

@implementation NSSet (XUNCrashShield)

+ (void)addCrashField {
    
//    __NSPlaceholderSet
    
    kWillSwizzleInstanceMethod(__NSPlaceholderSet, NSSet, initWithObjects:count:)
    
}


- (instancetype)kSwizzleMethodWithClass(__NSPlaceholderSet, initWithObjects:(id  _Nonnull const [])objects count:(NSUInteger)cnt) {
    
    if (objects == nil) {
        if (cnt == 0) {
            return [self kSwizzleMethodWithClass(__NSPlaceholderSet, initWithObjects:objects count:cnt)];
        }
        
        return nil;
    }
    
    @try {
        return [self kSwizzleMethodWithClass(__NSPlaceholderSet, initWithObjects:objects count:cnt)];
    }
    @catch (NSException *e) {
        NSAssert(0, e.description);
        [e save];
        return nil;
    }
    @finally {}
}

@end
