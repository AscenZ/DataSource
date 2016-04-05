//
//  AppDelegate.h
//  DataSource
//
//  Created by lightman on 16/4/5.
//  Copyright © 2016年 YCTime. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ReturnModel;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

+ (instancetype)sharedDelegate;

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) ReturnModel *returnModel;

@end

