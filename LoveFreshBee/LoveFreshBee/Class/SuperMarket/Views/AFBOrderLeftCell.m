//
//  AFBOrderLeftCell.m
//  LoveFreshBee
//
//  Created by Adam on 2016/11/19.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBOrderLeftCell.h"

@implementation AFBOrderLeftCell{
    UILabel *_titleLable;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupUI];
    }
    return self;
}

//MARK:设置UI
- (void)setupUI{
    
    self.contentView.backgroundColor = [UIColor ay_colorWithR:239 G:239 B:239 alpha:1.0];
    
    self.textLabel.text = @"优选水果过";
    self.textLabel.font = [UIFont systemFontOfSize:9.7];
    self.textLabel.textColor = [UIColor colorWithWhite:0.3 alpha:1.0];
    
    
    
    //MARK:设置选中状态的背景View
    UIView * selectView = [[UIView alloc]initWithFrame:self.contentView.bounds];
    selectView.backgroundColor = [UIColor whiteColor];
    self.selectedBackgroundView = selectView;
    
    UIView * yellowView = [[UIView alloc]initWithFrame:CGRectMake(0, 5, 5, 30)];
    yellowView.backgroundColor = kBaseColor;
    [selectView addSubview:yellowView];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    //MARK:设置选中和没选中状态titleLabel文本的颜色
    self.textLabel.textColor = self.isSelected?[UIColor blackColor]:[UIColor colorWithWhite:0.3 alpha:1.0];
}

@end
