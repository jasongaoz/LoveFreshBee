//
//  AFBBaseTableView.m
//  LoveFreshBee
//
//  Created by Adam on 2016/11/20.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBBaseTableView.h"

@implementation AFBBaseTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    if (self = [super initWithFrame:frame style:style]) {
        self.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1.0];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
