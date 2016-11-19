//
//  AFBOrderRightCell.m
//  LoveFreshBee
//
//  Created by Colbert Zhan on 2016/11/19.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBOrderRightCell.h"

@implementation AFBOrderRightCell


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

//让label在被选中状态背景颜色不变
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    self.contentView.backgroundColor = [UIColor whiteColor];
}

//让label在高亮状态背景颜色不变
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    [super setHighlighted:highlighted animated:YES];
    self.contentView.backgroundColor = [UIColor whiteColor];
}
@end
