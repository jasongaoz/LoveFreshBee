//
//  AFBOrderLeftTableView.m
//  LoveFreshBee
//
//  Created by Adam on 2016/11/19.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBOrderLeftTableView.h"

@implementation AFBOrderLeftTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    if (self = [super initWithFrame:frame style:style]) {
        [self setupUI];
        
    }
    return self;
}

- (void)setupUI{
    self.rowHeight = 40;
}

@end
