//
//  AFBShopCarController.m
//  LoveFreshBee
//
//  Created by Adam on 2016/11/19.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBShopCarController.h"
#import "AFBHomeController.h"
#import <SVProgressHUD/SVProgressHUD.h>
@interface AFBShopCarController ()

@end

@implementation AFBShopCarController
{
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
//
- (void)viewDidAppear:(BOOL)animated{
    
    [self loadData];
}

- (void)loadData{
    self.shopModelList = @[@1,@2];
    if (self.shopModelList) {
        NSLog(@"加载数据");
        [SVProgressHUD showWithStatus:@"正在验证商品信息"];
    }else{
        return;
    }
}

- (void)setupUI{
    self.view.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1];
    self.navigationItem.title = @"购物车";
    
    //这里要判断是否有数据,进入这个页面的时候
    
    
    NSLog(@"创建");
    UIImageView *shopView = [[UIImageView alloc] init];
    shopView.image = [UIImage imageNamed:@"v2_shop_empty"];
    [self.view addSubview:shopView];
    UILabel *desLabel = [[UILabel alloc] init];
    desLabel.text = @"亲,购物车空空的耶~赶紧去挑好吃的吧";
    desLabel.font = [UIFont systemFontOfSize:14];
    desLabel.textColor = [UIColor grayColor];
    desLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:desLabel];
    UIButton *searchBtn = [[UIButton alloc] init];
    [searchBtn setTitle:@"去逛逛" forState:UIControlStateNormal];
    [searchBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    searchBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [searchBtn.layer setBorderWidth:0.5];
    [searchBtn addTarget:self action:@selector(jumpToHomeVc) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:searchBtn];
    //布局
    [shopView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view).offset(-80);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [desLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.centerX.equalTo(self.view);
        
    }];
    [searchBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view).offset(40);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(40);
    }];
    
}
- (void)jumpToHomeVc{
    [self.tabBarController setSelectedIndex:0];
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
