//
//  UIButton+Addition.h
//  MTWM
//
//  Created by Adam on 2016/10/20.
//  Copyright © 2016年 YinY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Addition)

/// 创建文本按钮
///
/// @param title         文本
/// @param fontSize      字体大小
/// @param normalColor   默认颜色
/// @param selectedColor 选中颜色
///
/// @return UIButton
+ (instancetype)ay_textButton:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor;

@end
