//
//  CLXTest.h
//  CLXSingleton
//
//  Created by liangxiu.chen on 16/7/26.
//  Copyright © 2016年 liangxiu.chen. All rights reserved.
//

#import "CLXBaseSingleton.h"

@interface CLXUsageDemo : CLXBaseSingleton<SingletonRule>

@property (nonatomic, assign) BOOL isfun;

@end
