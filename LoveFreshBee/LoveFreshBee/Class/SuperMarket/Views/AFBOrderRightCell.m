//
//  AFBOrderRightCell.m
//  LoveFreshBee
//
//  Created by Colbert Zhan on 2016/11/19.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBOrderRightCell.h"
#import "AFBOrderIncreaseAndReduceView.h"

@implementation AFBOrderRightCell


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    [self setupUI];
}

//加载添加和减少购物数量的view
- (void)setupUI{
    AFBOrderIncreaseAndReduceView *increaseAndReduceView = [[[UINib nibWithNibName:@"AFBOrderIncreaseAndReduceView" bundle:nil] instantiateWithOwner:nil options:nil] lastObject];
    
    [self addSubview:increaseAndReduceView];
    
    //increaseAndReduceView的布局size
    CGSize size = increaseAndReduceView.bounds.size;
    [increaseAndReduceView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(size);
        make.right.bottom.equalTo(self).offset(-8);
    }];
    
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
