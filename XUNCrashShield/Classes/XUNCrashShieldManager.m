
//
//  XUNCrashShieldManager.m
//  FBSnapshotTestCase
//
//  Created by 陶埙 on 14/12/2018.
//

#import "XUNCrashShieldManager.h"

@implementation XUNCrashShieldManager

+ (instancetype)shareManager {
    static XUNCrashShieldManager *m;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        m = [[XUNCrashShieldManager alloc] init];
//        m.crashShieldList = @[NSArray.class, NSMutableArray.class, NSSet.class, NSDictionary.class, NSMutableDictionary.class, NSObject.class, UIView.class, CALayer.class];
//        m.excludeList = @[];
    });
    return m;
}

- (void)guard {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
//        NSMutableArray *arr = self.crashShieldList.mutableCopy;
//        [arr removeObjectsInArray:self.excludeList];
//
//        for (Class <XUNCrashShield> cls in arr) {
//            [cls addCrashField];
//        }
    });
}

@end
