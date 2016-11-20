//
//  AFBDownLoadManager.h
//  LoveFreshBee
//
//  Created by gao2015 on 2016/11/20.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AFBDownLoadManager : NSObject

+ (instancetype)shareManager;



- (void)getHomeDataWithParameters:(NSNumber *)parameter CompleteBlock:(void(^)(NSArray *arrayH))completeBlock;

- (void)getHomeHotSaleDataParameters:(NSNumber *)parameter CompleteBlock:(void(^)(NSDictionary *dicH,NSString *reqid))completeBlock;
- (void)getLaunchDataWithBlock:(void(^)(NSDictionary * dic))completeBlock;

- (void)getSuperMarketDataWithParameters:(NSNumber *)parameter CompleteBlock:(void(^)(NSArray *arrayCategories,NSDictionary *dicProduct))completeBlock;

- (void)getMineOrderDataWithcompleteBlock:(void(^)(NSArray *dataArray))completeBlock;
- (void)getMineCardDataWithconpleteBlock:(void(^)(NSArray *dataArray))completeBlock;
- (void)getMineSysmsgDataWithconpleteBlock:(void(^)(NSArray *dataArray))completeBlock;
- (void)getMineMessageDataWithconpleteBlock:(void(^)(NSArray *dataArray))completeBlock;
- (void)getMineAdressDataWithconpleteBlock:(void(^)(NSArray *dataArray))completeBlock;

@end
