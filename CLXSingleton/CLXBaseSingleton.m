//
//  CLXBaseSingleton.m
//  CLXSingleton
//
//  Created by liangxiu.chen on 16/7/26.
//  Copyright © 2016年 liangxiu.chen. All rights reserved.
//

#import "CLXBaseSingleton.h"

static id<SingletonRule> instance;
@implementation CLXBaseSingleton
+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if ([self conformsToProtocol:@protocol(SingletonRule) ]) {
            instance = [self alloc];
            instance = [instance initSingleton];
        } else {
            NSAssert(NO, @"子类必须遵循并实现<SingletonRule>协议");
        }
    });
  
    return instance;
    
}

- (id)copyWithZone:(NSZone *)zone
{
    return instance;
}

- (instancetype)init
{
    return instance;
}

@end
