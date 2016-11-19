//
//  UIViewController+Addition.h
//  addtion
//
//  Created by Adam on 2016/10/20.
//  Copyright © 2016年 YinY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Addition)

/**
 * 在当前视图控制器中添加子控制器，将子控制器的视图添加到 view 中
 *
 * @param childController 要添加的子控制器
 * @param view            要添加到的视图
 */
- (void)ay_addChildController:(UIViewController *)childController intoView:(UIView *)view;


@end
