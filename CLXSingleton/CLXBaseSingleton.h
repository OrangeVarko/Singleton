//
//  CLXBaseSingleton.h
//  CLXSingleton
//
//  Created by liangxiu.chen on 16/7/26.
//  Copyright © 2016年 liangxiu.chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SingletonRule <NSObject>

@required
- (instancetype)initSingleton;

@end

@interface CLXBaseSingleton : NSObject <NSCopying>

+ (instancetype)sharedInstance;

@end
