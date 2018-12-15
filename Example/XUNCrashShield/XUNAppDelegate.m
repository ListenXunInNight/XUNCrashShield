//
//  XUNAppDelegate.m
//  XUNCrashShield
//
//  Created by longlyman on 12/14/2018.
//  Copyright (c) 2018 longlyman. All rights reserved.
//

#import "XUNAppDelegate.h"
#import "XUNCrashShieldManager.h"

@implementation XUNAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    XUNCrashShieldManager *csManager = [XUNCrashShieldManager shareManager];
    csManager.excludeList = @[NSObject.class];
    [csManager guard];
    
    NSString *strings[5] = {@"1", @"2", @"3", @"4", @"5"};
    strings[2] = nil;
    
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

    /// and so on.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
