//
//  AFBHomeController.m
//  LoveFreshBee
//
//  Created by Adam on 2016/11/19.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBHomeController.h"
#import "AFBHomeHeaderView.h"

@interface AFBHomeController ()

@end

@implementation AFBHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - 搭建界面
- (void)setupUI{
    self.view.backgroundColor = [UIColor yellowColor];
    self.navigationItem.title = @"首页";
    //MARK:创建主页的tableView
    UITableView * mainTableView = [UITableView new];
    
    [self.view addSubview:mainTableView];
    
    [mainTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.edges.mas_equalTo(self.view);
    }];
    
    //创建headerView
    AFBHomeHeaderView * headerView = [AFBHomeHeaderView new];
    
    headerView.frame = CGRectMake(0, 0, 0, 200);
    
    mainTableView.tableHeaderView = headerView;
}



@end
