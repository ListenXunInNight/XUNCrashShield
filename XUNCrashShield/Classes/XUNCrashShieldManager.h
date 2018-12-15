//
//  XUNCrashShieldManager.h
//  FBSnapshotTestCase
//
//  Created by 陶埙 on 14/12/2018.
//

#import <Foundation/Foundation.h>
#import "XUNCrashShield.h"

@interface XUNCrashShieldManager : NSObject

/// 防御名单
/// NSArray, NSMutableArray, NSSet, NSDictionary, NSMutableDictionary, NSObject, UIView, CALayer
@property (nonatomic, strong) NSArray <Class <XUNCrashShield>> *crashShieldList;

/// 不需要防御中的白名单
@property (nonatomic, strong) NSArray <Class <XUNCrashShield>> *excludeList;

+ (instancetype)shareManager;

/// 今第一次调用有效，不允许交换多次
- (void)guard;

@end
