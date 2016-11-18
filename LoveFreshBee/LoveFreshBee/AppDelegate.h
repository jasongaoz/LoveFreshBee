//
//  AppDelegate.h
//  LoveFreshBee
//
//  Created by gao2015 on 2016/11/18.
//  Copyright © 2016年 gao2015. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

