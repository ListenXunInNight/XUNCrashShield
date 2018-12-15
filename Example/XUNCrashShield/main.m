//
//  main.m
//  XUNCrashShield
//
//  Created by longlyman on 12/15/2018.
//  Copyright (c) 2018 longlyman. All rights reserved.
//

@import UIKit;
#import "XUNAppDelegate.h"
#import <XUNCrashShield/XUNCrashShield-umbrella.h>


int main(int argc, char * argv[])
{
    @autoreleasepool {
        [NSArray addCrashField];
        [NSMutableArray addCrashField];
        [NSObject addCrashField];
        [NSDictionary addCrashField];
        [NSMutableDictionary addCrashField];
        [NSSet addCrashField];

        [UIView addCrashField];
        [CALayer addCrashField];
//        XUNCrashShieldManager *csManager = [XUNCrashShieldManager shareManager];
//        csManager.excludeList = @[NSObject.class];
//        [csManager guard];
//        [NSMutableArray add]
        
        //    NSString *strings[5] = {@"1", @"2", @"3", @"4", @"5"};
        //    strings[2] = nil;
        
        //    @[strings[1], strings[2]];
        //    @[strings[2]];
        //    @{strings[1]:strings[2]}
        
        //    [NSArray arrayWithObjects:strings count:5];
        
        
        //    NSMutableArray *arr = @[].mutableCopy;
        //    [arr insertObject:strings[0] atIndex:2];
        //    [arr insertObject:strings[2] atIndex:0];
        //    [arr addObject:strings[2]];
        //    [arr removeObjectAtIndex:1];
        //    [arr removeObjectsInRange:NSMakeRange(0, 100)];
        
        //    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:strings[1], strings[2], nil];
        
        //    NSMutableDictionary *dict = @{}.mutableCopy;
        //    [dict setObject:strings[1] forKey:strings[2]];
        
        //    [self performSelector:@selector(sayHello)];
        //    [self setValue:strings[2] forKey:strings[2]];
        //    [self valueForKey:strings[2]];
        //    [self setValue:strings[1] forKey:strings[1]];

        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([XUNAppDelegate class]));
    }
}
