//
//  AFBHomeFlowLyout.m
//  LoveFreshBee
//
//  Created by Kevin on 2016/11/20.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBHomeFlowLyout.h"

@implementation AFBHomeFlowLyout
- (void)prepareLayout{
    [super prepareLayout];
    self.scrollDirection = UICollectionViewScrollDirectionVertical;
    self.minimumInteritemSpacing = 1;
    self.minimumLineSpacing = 5;
    self.sectionInset = UIEdgeInsetsMake(0, 0, 20, 0);
}
@end
