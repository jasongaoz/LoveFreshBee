//
//  AFBHomeController.m
//  LoveFreshBee
//
//  Created by Adam on 2016/11/19.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBHomeController.h"

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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
