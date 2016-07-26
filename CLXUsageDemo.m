//
//  CLXTest.m
//  CLXSingleton
//
//  Created by liangxiu.chen on 16/7/26.
//  Copyright © 2016年 liangxiu.chen. All rights reserved.
//

#import "CLXUsageDemo.h"

@implementation CLXUsageDemo

- (instancetype)initSingleton
{
    //这里只要做初始化
    self.isfun = YES;
    return self;
}

@end
