//
//  AFBHomeHeaderView.m
//  LoveFreshBee
//
//  Created by 王志华 on 2016/11/19.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBHomeHeaderView.h"

//定义枚举
typedef enum : NSUInteger {
    kBtnDraw = 1,
    kBtnTextDraw = 2,
    
    kBtnSecKill = 3,
    kBtnTextSecKill = 4,
    
    kBtnRedBag = 5,
    kBtnTextRedBag = 6,
    
    kBtnBee = 7,
    kBtnTextBee = 8
} kBtn;

@implementation AFBHomeHeaderView

#pragma mark - 重写构造方法
- (instancetype)initWithFrame:(CGRect)frame{

    if (self = [super initWithFrame:frame]) {
        
        [self setUpUI];
    }
    
    return self;
}

#pragma mark - 搭建界面
- (void)setUpUI{

    //MARK:设置滚动图片视图
    UIImageView * scrollImageView = [[UIImageView alloc] init];
    
    [self addSubview:scrollImageView];
    
    [scrollImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.left.right.mas_equalTo(self);
        
        make.height.mas_equalTo(120);
    }];
    
    //设置一张临时图片
    scrollImageView.image = [UIImage imageNamed:@"member_bg"];
    
    
    //MARK:设置四个按钮
    CGSize btnSize = CGSizeMake(50, 50);
    
    CGFloat margin = ([UIScreen mainScreen].bounds.size.width - btnSize.width * 4) / 5;
    
    //抽奖按钮
    UIButton * btnDraw = [[UIButton alloc] init];
    
    [self addSubview:btnDraw];
    
    [btnDraw setBackgroundColor:[UIColor redColor]];
    
    [btnDraw mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(scrollImageView.mas_bottom).offset(20);
        
        make.left.mas_equalTo(self).offset(margin);
        
        make.size.mas_equalTo(btnSize);
    }];
    
    btnDraw.tag = 1;
    
    
    UIButton * btnTextDraw = [[UIButton alloc] init];
    
    [self addSubview:btnTextDraw];
    
    [btnTextDraw setTitle:@"抽奖" forState:UIControlStateNormal];
    
    [btnTextDraw setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    btnTextDraw.titleLabel.font = [UIFont systemFontOfSize:14];
    
    [btnTextDraw mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(btnDraw.mas_bottom);
        
        make.centerX.mas_equalTo(btnDraw);
    }];
    
    btnTextDraw.tag = 2;
    
    
    //秒杀按钮
    UIButton * btnSecKill = [[UIButton alloc] init];
    
    [self addSubview:btnSecKill];
    
    [btnSecKill setBackgroundColor:[UIColor blueColor]];
    
    [btnSecKill mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.mas_equalTo(btnDraw);
        
        make.left.mas_equalTo(btnDraw.mas_right).offset(margin);
        
        make.size.mas_equalTo(btnSize);
    }];
    
    btnSecKill.tag = 3;
    
    
    UIButton * btnTextSecKill = [[UIButton alloc] init];
    
    [self addSubview:btnTextSecKill];
    
    [btnTextSecKill setTitle:@"秒杀" forState:UIControlStateNormal];
    
    [btnTextSecKill setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    btnTextSecKill.titleLabel.font = [UIFont systemFontOfSize:14];
    
    [btnTextSecKill mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(btnSecKill.mas_bottom);
        
        make.centerX.mas_equalTo(btnSecKill);
    }];
    
    btnTextSecKill.tag = 4;


    //抢红包按钮
    UIButton * btnRedBag = [[UIButton alloc] init];
    
    [self addSubview:btnRedBag];
    
    [btnRedBag setBackgroundColor:[UIColor greenColor]];
    
    [btnRedBag mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.mas_equalTo(btnSecKill);
        
        make.left.mas_equalTo(btnSecKill.mas_right).offset(margin);
        
        make.size.mas_equalTo(btnSize);
    }];
    
    btnRedBag.tag = 5;

    
    UIButton * btnTextRedBag = [[UIButton alloc] init];
    
    [self addSubview:btnTextRedBag];
    
    [btnTextRedBag setTitle:@"抢红包" forState:UIControlStateNormal];
    
    [btnTextRedBag setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    btnTextRedBag.titleLabel.font = [UIFont systemFontOfSize:14];
    
    [btnTextRedBag mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(btnRedBag.mas_bottom);
        
        make.centerX.mas_equalTo(btnRedBag);
    }];
    
    btnTextRedBag.tag = 6;
    
    
    //蜂抱团按钮
    UIButton * btnBee = [[UIButton alloc] init];
    
    [self addSubview:btnBee];
    
    [btnBee setBackgroundColor:[UIColor cyanColor]];
    
    [btnBee mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.mas_equalTo(btnRedBag);
        
        make.left.mas_equalTo(btnRedBag.mas_right).offset(margin);
        
        make.size.mas_equalTo(btnSize);
    }];
    
    btnBee.tag = 7;

    
    UIButton * btnTextBee = [[UIButton alloc] init];
    
    [self addSubview:btnTextBee];
    
    [btnTextBee setTitle:@"蜂抱团" forState:UIControlStateNormal];
    
    [btnTextBee setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    btnTextBee.titleLabel.font = [UIFont systemFontOfSize:14];
    
    [btnTextBee mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(btnBee.mas_bottom);
        
        make.centerX.mas_equalTo(btnBee);
    }];
    
    btnTextBee.tag = 8;

}

#pragma mark - 实现点击事件
- (void)clickBtn:(UIButton *)sender{

    switch (sender.tag) {
            
        case kBtnDraw:
        case kBtnTextDraw:
            
            
            break;
        
        case kBtnSecKill:
        case kBtnTextSecKill:
            
            
            break;
            
        case kBtnRedBag:
        case kBtnTextRedBag:
            
            
            break;
            
        case kBtnBee:
        case kBtnTextBee:
            
            
            break;
            
        default:
            break;
    }
}

@end
