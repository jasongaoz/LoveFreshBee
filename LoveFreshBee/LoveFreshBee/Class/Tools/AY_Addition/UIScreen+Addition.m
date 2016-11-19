//
//  UIScreen+Addition.m
//  addtion
//
//  Created by Adam on 2016/10/20.
//  Copyright © 2016年 YinY. All rights reserved.
//

#import "UIScreen+Addition.h"

@implementation UIScreen (Addition)

+ (CGFloat)ay_screenWidth {
    return [UIScreen mainScreen].bounds.size.width;
}

+ (CGFloat)ay_screenHeight {
    return [UIScreen mainScreen].bounds.size.height;
}

+ (CGFloat)ay_scale {
    return [UIScreen mainScreen].scale;
}

@end
