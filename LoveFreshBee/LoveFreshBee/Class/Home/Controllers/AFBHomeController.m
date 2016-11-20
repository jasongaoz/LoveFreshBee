//
//  AFBHomeController.m
//  LoveFreshBee
//
//  Created by Adam on 2016/11/19.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBHomeController.h"
#import "AFBHomeHeaderView.h"
#import "AFBHomeFlowLyout.h"
#import "AFBHomeBodyFristCell.h"

@interface AFBHomeController ()<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@end

@implementation AFBHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadData];
}

#pragma mark - 搭建界面
- (void)setupUI{
    self.view.backgroundColor = [UIColor yellowColor];
    self.navigationItem.title = @"首页";
    //MARK:创建主页的collection
    AFBHomeFlowLyout *layout = [[AFBHomeFlowLyout alloc]init];
    UICollectionView * mainCollectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    mainCollectionView.backgroundColor = [UIColor yellowColor];
    mainCollectionView.dataSource = self;
    mainCollectionView.delegate = self;
    
    [mainCollectionView registerNib:[UINib nibWithNibName:@"AFBHomeBodyFristCell" bundle:nil] forCellWithReuseIdentifier:@"cell"];
    
    [self.view addSubview:mainCollectionView];
    
    [mainCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view);
    }];
    
    //创建headerView
    AFBHomeHeaderView * headerView = [AFBHomeHeaderView new];
    
    headerView.frame = CGRectMake(0, 0, 0, 200);
    
//    mainTableView.tableHeaderView = headerView;
    
    //MARK:添加NavigationItem
    [self addNavigationItem];
}

#pragma mark - 加载数据
- (void)loadData{
    
    
}

#pragma mark - 添加 设置NavigationItem
- (void)addNavigationItem{
    //左侧
    //不让系统渲染图片
    UIImage *leftImage = [[UIImage imageNamed:@"icon_black_scancode"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem * leftItem = [[UIBarButtonItem alloc]initWithImage:leftImage style:UIBarButtonItemStylePlain target:self action:@selector(clickLeftItem)];
    self.navigationItem.leftBarButtonItem = leftItem;
    
    //右侧
    //不让系统渲染图片
    UIImage *rightImage = [[UIImage imageNamed:@"icon_search"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem * rightItem = [[UIBarButtonItem alloc]initWithImage:rightImage style:UIBarButtonItemStylePlain target:self action:@selector(clickRightItem)];
    self.navigationItem.rightBarButtonItem = rightItem;
}

- (void)clickLeftItem{
    NSLog(@"点击了扫一扫");
}

- (void)clickRightItem{
    NSLog(@"点击了搜索");
}
#pragma mark - collectionDatasouce
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 2;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 4;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    AFBHomeBodyFristCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    return cell;
    
}

#pragma mark -collectionDelegateFlowLayout
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return CGSizeMake(self.view.self.bounds.size.width, 80);
    }
    CGFloat wigth = (self.view.bounds.size.width-5)/2;
    return CGSizeMake(wigth, 100);
    
}


@end
