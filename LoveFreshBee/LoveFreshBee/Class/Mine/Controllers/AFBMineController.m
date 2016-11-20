//
//  AFBMineController.m
//  LoveFreshBee
//
//  Created by Adam on 2016/11/19.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBMineController.h"
#import "AFBMineTableViewCell.h"
//#import "NSAttributedString+Additon.h"
//#import "NSAttributedString+CZAdditon.h"

static NSString *mainFirstCell = @"mainFirstCell";

@interface AFBMineController ()<UITableViewDelegate,UITableViewDataSource>

    
    
    
@end

@implementation AFBMineController

//- (void)loadView
//{
//    self.navigationController.navigationBar.alpha = 0;
//
//}
- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationController.navigationBar.alpha = 0;
}
#pragma mark - 搭建界面
- (void)setupUI{
    
    self.view.backgroundColor = [UIColor colorWithRed:235/255.0 green:235/255.0 blue:236/255.0 alpha:1];
   
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
   [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    
    // 1.创建头部View
    UIView *headerView = [[UIView alloc] init];
   [self.view addSubview:headerView];
    //1.1 添加一个imageView
    UIImageView * imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:@"v2_my_avatar_bg"];
    [headerView addSubview:imageView];

    UIImageView *cicleView = [[UIImageView alloc] init];
    cicleView.backgroundColor = [UIColor whiteColor];
    cicleView.layer.cornerRadius = 10;
    cicleView.image = [UIImage imageNamed:@"v2_my"];
    [headerView addSubview:cicleView];
    cicleView.frame = CGRectMake(150, 20, 58, 58);
    
    UILabel *lb_tellphoneNum = [[UILabel alloc] init];
    [headerView addSubview:lb_tellphoneNum];
    lb_tellphoneNum.text = @"18910328555";
    lb_tellphoneNum.textColor = [UIColor whiteColor];
    lb_tellphoneNum.frame = CGRectMake(120, 90, 140, 20);
    
    // 1.2 创建一个小view ，添加到头部view中
    UIView *threeBtnView = [self creatThreeBtnView];
    threeBtnView.backgroundColor = [UIColor whiteColor];
    [headerView addSubview:threeBtnView];
    
    
    // 2. 创建下部的tableView
    UITableView *mineTableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    mineTableView.bounces = NO;
    mineTableView.backgroundColor = [UIColor colorWithRed:235/255.0 green:235/255.0 blue:236/255.0 alpha:1];
    // 2.1 注册
    [mineTableView registerClass:[AFBMineTableViewCell class] forCellReuseIdentifier:mainFirstCell];
    //2.2 设置代理
    mineTableView.dataSource = self;
    mineTableView.delegate = self;
    [self.view addSubview:mineTableView];
    //2.3 添加一个footerView
    UIView *footerView = [[UIView alloc] init];
    footerView.backgroundColor = [UIColor colorWithRed:235/255.0 green:235/255.0 blue:236/255.0 alpha:1];
    mineTableView.tableFooterView = footerView;
    
    
    // 3.设置约束
    [headerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(self.view);
        make.height.mas_equalTo(180);
    }];
    [mineTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(headerView.mas_bottom).offset(8);
        make.left.right.bottom.equalTo(self.view);
    }];
     [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(headerView);
    }];
    // threebtn的约束
    [threeBtnView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.right.equalTo(headerView);
        make.height.mas_equalTo(55);
    }];
    
}
// 封装图文混排的view
- (UIView *)creatThreeBtnView
{
    UIView *threeBtnView = [[UIView alloc] init];
    threeBtnView.backgroundColor = [UIColor whiteColor];
    // 设置图文混排的按钮
    UIButton *myOderBtn = [[UIButton alloc] init];
    [myOderBtn setAttributedTitle:[NSAttributedString ay_imageTextWithImage:[UIImage imageNamed:@"icon_tuikuan"] imageWH:18.0 title:@"我的订单" fontSize:13 titleColor:[UIColor lightGrayColor] spacing:5] forState:UIControlStateNormal];
    
    UIButton *myCardBtn = [[UIButton alloc] init];
    [myCardBtn setAttributedTitle:[NSAttributedString ay_imageTextWithImage:[UIImage imageNamed:@"v2_empty_pointsDeatil"] imageWH:18.0 title:@"优惠券" fontSize:13 titleColor:[UIColor lightGrayColor] spacing:5] forState:UIControlStateNormal];
    
    UIButton *myMessageBtn = [[UIButton alloc] init];
    [myMessageBtn setAttributedTitle:[NSAttributedString ay_imageTextWithImage:[UIImage imageNamed:@"UMS_comment_normal_white"] imageWH:18.0 title:@"我的消息" fontSize:13 titleColor:[UIColor lightGrayColor] spacing:5] forState:UIControlStateNormal];

    [threeBtnView addSubview:myOderBtn];
    [threeBtnView addSubview:myCardBtn];
    [threeBtnView addSubview:myMessageBtn];
    
    float btnW = [UIScreen mainScreen].bounds.size.width / 3;
    [myOderBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.left.equalTo(threeBtnView);
        make.size.width.offset(btnW);
    }];

    [myCardBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(threeBtnView);
        make.left.equalTo(myOderBtn.mas_right);
        make.size.width.offset(btnW);
    }];
    [myMessageBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(threeBtnView);
        make.size.width.offset(btnW);
        make.left.equalTo(myCardBtn.mas_right);
    }];

    
    myOderBtn.titleLabel.numberOfLines = 0;
    myOderBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    myCardBtn.titleLabel.numberOfLines = 0;
    myCardBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    myMessageBtn.titleLabel.numberOfLines = 0;
    myMessageBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    return threeBtnView;
    

}



    
#pragma mark - 代理方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 2;
    }
    else if (section == 1)
    {
    
        return 1;
    }
    else
    {
        return 2;
    }
    
}
// cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    AFBMineTableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:mainFirstCell forIndexPath:indexPath];
    
    return cell;
    
    
}
    
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if (section == 2)
    {
        return 0.1;
    }
    
    return 10;
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
