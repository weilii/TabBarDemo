//
//  YDAppDelegate.m
//  TabBarDemo
//
//  Created by Wei Li on 9/19/14.
//  Copyright (c) 2014 ___YOURDREAM___. All rights reserved.
//

#import "YDAppDelegate.h"
#import "MainTabBarViewController.h"

@implementation YDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    MainTabBarViewController *mainTabBarViewController = [[MainTabBarViewController alloc] init];
    self.window.rootViewController = mainTabBarViewController;

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}


@end