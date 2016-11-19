//
//  NSObject+Addition.m
//  addtion
//
//  Created by Adam on 2016/10/20.
//  Copyright © 2016年 YinY. All rights reserved.
//

#import "NSObject+Addition.h"

@implementation NSObject (Addition)

/// 使用字典创建模型对象
///
/// @param dict 字典
///
/// @return 模型对象
+ (instancetype)ay_objectWithDict:(NSDictionary *)dict {
    id obj = [[self alloc] init];
    
    [obj setValuesForKeysWithDictionary:dict];
    
    return obj;
}

@end
