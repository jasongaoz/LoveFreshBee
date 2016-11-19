//
//  AFBOrderRightTableView.m
//  LoveFreshBee
//
//  Created by Colbert Zhan on 2016/11/19.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBOrderRightTableView.h"

@implementation AFBOrderRightTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    if (self = [super initWithFrame:frame style:style]) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI{
    self.rowHeight = 80;
}
@end
