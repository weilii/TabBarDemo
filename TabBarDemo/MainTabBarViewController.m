//
// Created by Wei Li on 9/19/14.
// Copyright (c) 2014 ___YOURDREAM___. All rights reserved.
//

#import "MainTabBarViewController.h"
#import "ContentListViewController.h"


@implementation MainTabBarViewController

- (id)init {
    self = [super init];
    if (self) {
        NSMutableArray *viewControllers = [NSMutableArray array];
        for (NSUInteger index = 0; index < 4; index++) {
            ContentListViewController *vc = [[ContentListViewController alloc] initWithIndex:index];
            UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
            [nvc.tabBarItem setTitle:[NSString stringWithFormat:@"Test %@", @(index).stringValue]];
            viewControllers[index] = nvc;
        }

        self.viewControllers = viewControllers;
    }
    return self;
}

@end