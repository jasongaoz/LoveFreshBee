//
//  AFBDownLoadManager.m
//  LoveFreshBee
//
//  Created by gao2015 on 2016/11/20.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import "AFBDownLoadManager.h"

@implementation AFBDownLoadManager

static id _instance;
+ (instancetype)shareManager{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}
//异步获取首页数据
- (void)getHomeDataWithParameters:(NSNumber *)parameter CompleteBlock:(void(^)(NSArray *arrayH))completeBlock{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [[AFJSONRequestSerializer alloc] init];
    manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    [manager POST:@"http://iosapi.itcast.cn/loveBeen/focus.json.php" parameters: nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary * responseObject) {
        NSLog(@"%@",responseObject);
       NSArray *array = responseObject[@"data"];
        if (completeBlock) {
            completeBlock(array);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"%@",error);
        
    }];
}

//异步获取首页新鲜热卖数据
- (void)getHomeHotSaleDataParameters:(NSNumber *)parameter CompleteBlock:(void(^)(NSDictionary *dicH,NSString *reqid))completeBlock{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [[AFJSONRequestSerializer alloc] init];
    manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    NSDictionary *dict = @{@"call":parameter};
    [manager POST:@"http://iosapi.itcast.cn/loveBeen/firstSell.json.php" parameters: dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary * responseObject) {
        NSDictionary *dic = responseObject[@"data"];
        NSString *reqStr = responseObject[@"reqid"];
        if (completeBlock) {
            completeBlock(dic,reqStr);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"%@",error);
    }];

}
//启动页数据
- (void)getLaunchDataWithBlock:(void(^)(NSDictionary * dic))completeBlock{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [[AFJSONRequestSerializer alloc] init];
    manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    NSDictionary *dict = @{@"call":@"7"};
    [manager POST:@"http://iosapi.itcast.cn/loveBeen/ad.json.php" parameters: dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary * responseObject) {
        NSDictionary * dict = responseObject[@"data"];
        if (completeBlock) {
            completeBlock(dict);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"%@",error);
    }];

}

//异步获取闪电超时数据
- (void)getSuperMarketDataWithParameters:(NSNumber *)parameter CompleteBlock:(void(^)(NSArray *arrayCategories,NSDictionary *dicProduct))completeBlock{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [[AFJSONRequestSerializer alloc] init];
    manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    NSDictionary *dict = @{@"call":parameter};
    [manager POST:@"http://iosapi.itcast.cn/loveBeen/supermarket.json.php" parameters: dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary * responseObject) {
        NSArray *array = responseObject[@"data"][@"categories"];
        NSDictionary * dict = responseObject[@"data"][@"products"];
        if (completeBlock) {
            completeBlock(array,dict);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {        
        NSLog(@"%@",error);
    }];
}
//我的订单
- (void)getMineOrderDataWithcompleteBlock:(void(^)(NSArray *dataArray))completeBlock{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [[AFJSONRequestSerializer alloc] init];
    manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    NSDictionary *dict = @{@"call":@"13"};
    [manager POST:@"http://iosapi.itcast.cn/loveBeen/MyOrders.json.php" parameters: dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary * responseObject) {
        NSArray *array = responseObject[@"data"];
        if (completeBlock) {
            completeBlock(array);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
}
//我的优惠券

- (void)getMineCardDataWithconpleteBlock:(void(^)(NSArray *dataArray))completeBlock{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [[AFJSONRequestSerializer alloc] init];
    manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    NSDictionary *dict = @{@"call":@"9"};
    [manager POST:@"http://iosapi.itcast.cn/loveBeen/MyCoupon.json.php" parameters: dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary * responseObject) {
        NSArray *array = responseObject[@"data"];
        if (completeBlock) {
            completeBlock(array);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
}
//系统信息
- (void)getMineSysmsgDataWithconpleteBlock:(void(^)(NSArray *dataArray))completeBlock{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [[AFJSONRequestSerializer alloc] init];
    manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    NSDictionary *dict = @{@"call":@"9"};
    [manager POST:@"http://iosapi.itcast.cn/loveBeen/SystemMessage.json.php" parameters: dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary * responseObject) {
        NSArray *array = responseObject[@"data"];
        if (completeBlock) {
            completeBlock(array);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
}
//我的消息
- (void)getMineMessageDataWithconpleteBlock:(void(^)(NSArray *dataArray))completeBlock{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [[AFJSONRequestSerializer alloc] init];
    manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    NSDictionary *dict = @{@"call":@"11"};
    [manager POST:@"http://iosapi.itcast.cn/loveBeen/UserMessage.json.php" parameters: dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary * responseObject) {
        NSArray *array = responseObject[@"data"];
        if (completeBlock) {
            completeBlock(array);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
}
//收获地址
- (void)getMineAdressDataWithconpleteBlock:(void(^)(NSArray *dataArray))completeBlock{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [[AFJSONRequestSerializer alloc] init];
    manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    NSDictionary *dict = @{@"call":@"12"};
    [manager POST:@"http://iosapi.itcast.cn/loveBeen/MyAdress.json.php" parameters: dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary * responseObject) {
        NSArray *array = responseObject[@"data"];
        if (completeBlock) {
            completeBlock(array);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
}

@end
