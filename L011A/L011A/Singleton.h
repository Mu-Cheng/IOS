//
//  Singleton.h
//  L011A
//
//  Created by Student04 on 16/5/31.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject


@property (nonatomic,strong) NSString *strValue;
+ (instancetype) getSingleInstance;

@end
