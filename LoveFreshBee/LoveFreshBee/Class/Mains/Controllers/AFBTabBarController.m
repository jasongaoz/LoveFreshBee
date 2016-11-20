//
//  AFBTabBarController.m
//  LoveFreshBee
//
//  Created by gao2015 on 2016/11/19.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBTabBarController.h"
#import "AFBBaseNavgationController.h"
#import "AFBBaseViewController.h"
@interface AFBTabBarController ()

@end

@implementation AFBTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)setupUI{
    NSDictionary * dic1 = @{@"vcName":@"AFBHomeController",@"image":@"v2_home",@"title":@"首页"};
    NSDictionary * dic2 = @{@"vcName":@"AFBOrderController",@"image":@"v2_order",@"title":@"闪送超市"};
    NSDictionary * dic3 = @{@"vcName":@"AFBShopCarController",@"image":@"shopCart",@"title":@"购物车"};
    NSDictionary * dic4 = @{@"vcName":@"AFBMineController",@"image":@"v2_my",@"title":@"我的"};
    AFBBaseNavgationController * vc1 = [self addViewControllerWithDic:dic1];
    AFBBaseNavgationController * vc2 = [self addViewControllerWithDic:dic2];
    AFBBaseNavgationController * vc3 = [self addViewControllerWithDic:dic3];
    AFBBaseNavgationController * vc4 = [self addViewControllerWithDic:dic4];
    
    self.viewControllers = @[vc1,vc2,vc3,vc4];
    [[UITabBar appearance]setTintColor:[UIColor grayColor]];
}

- (AFBBaseNavgationController *)addViewControllerWithDic:(NSDictionary *)dic{
    Class class = NSClassFromString(dic[@"vcName"]);
    AFBBaseViewController * vc = [class new];
    vc.tabBarItem.image = [[UIImage imageNamed:[NSString stringWithFormat:@"%@",dic[@"image"]]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"%@_selected",dic[@"image"]]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.title = dic[@"title"];
    
    AFBBaseNavgationController * nvController = [[AFBBaseNavgationController alloc]initWithRootViewController:vc];
    
    return nvController;
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
