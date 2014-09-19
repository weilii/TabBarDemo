//
// Created by Wei Li on 9/19/14.
// Copyright (c) 2014 ___YOURDREAM___. All rights reserved.
//

#import "ContentListViewController.h"


@interface ContentListViewController() <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, assign) NSInteger index;

@end

@implementation ContentListViewController

- (id)initWithIndex:(NSInteger)index {
    self = [self init];
    if (self) {
        self.index = index;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = @(self.index).stringValue;

    // self.automaticallyAdjustsScrollViewInsets = NO;
    // if NO tableView.frame = CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64 - self.tabBarController.tabBar.frame.size.height);
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10 * (self.index + 1);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellId = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = @(indexPath.row).stringValue;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    ContentListViewController *next = [[ContentListViewController alloc] initWithIndex:indexPath.row];
    next.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:next animated:YES];
}


@end