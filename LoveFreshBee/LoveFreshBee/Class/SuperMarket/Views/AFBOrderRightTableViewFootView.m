//
//  AFBOrderRightTableViewFootView.m
//  LoveFreshBee
//
//  Created by Adam on 2016/11/20.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBOrderRightTableViewFootView.h"

@implementation AFBOrderRightTableViewFootView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI{
    UIImageView * bgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"v2_common_footer"]];
    [self addSubview:bgView];
    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
    }];
    
}

@end
