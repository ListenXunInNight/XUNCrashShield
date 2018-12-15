# XUNCrashShield

[![CI Status](https://img.shields.io/travis/longlyman/XUNCrashShield.svg?style=flat)](https://travis-ci.org/longlyman/XUNCrashShield)
[![Version](https://img.shields.io/cocoapods/v/XUNCrashShield.svg?style=flat)](https://cocoapods.org/pods/XUNCrashShield)
[![License](https://img.shields.io/cocoapods/l/XUNCrashShield.svg?style=flat)](https://cocoapods.org/pods/XUNCrashShield)
[![Platform](https://img.shields.io/cocoapods/p/XUNCrashShield.svg?style=flat)](https://cocoapods.org/pods/XUNCrashShield)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

XUNCrashShield is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'XUNCrashShield'
```

## Author

Xun, listenxun@gmail.com

## License

XUNCrashShield is available under the MIT license. See the LICENSE file for more info.



## Introduction

访问 NSArray 越界？

向 NSMutableArray、NSMutableDictionary 中插入空值？

利用空值初始化NSArray、NSDictionary、NSSet ？

将 UIView、CALayer 添加为 subview 、sublayer ？

消息转发时找不到对应方法？

使用时 KVC 时 key 为nil或者 undefined？

......

还在为这些常见线上 crash 而感到头疼吗？

现在你们不用担心了，XUNCrashShield 能够帮你解决 80% 以上的 Crash 。



还有，对象使用 KVO 或 NSNotificationCenter 监听消息时，忘记在 dealloc 时移除的问题也正在解决当中...



### Guide

```objective-c
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

```



