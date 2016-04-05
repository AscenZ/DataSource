//
//  AppDelegate.m
//  DataSource
//
//  Created by lightman on 16/4/5.
//  Copyright © 2016年 YCTime. All rights reserved.
//

#import "AppDelegate.h"
#import "ReturnModel.h"

@interface AppDelegate ()

@property(nonatomic,strong) ReturnModel *returnModel;

@end

@implementation AppDelegate

+ (instancetype)sharedDelegate
{
    return [UIApplication sharedApplication].delegate;
}

- (ReturnModel *)returnModel
{
    if (_returnModel == nil) {
        _returnModel = [ReturnModel returnModel];
    }
    return _returnModel;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}



@end
