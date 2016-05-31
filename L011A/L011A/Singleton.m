//
//  Singleton.m
//  L011A
//
//  Created by Student04 on 16/5/31.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

+ (instancetype) getSingleInstance{
    static Singleton *instance = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        instance = [[Singleton alloc]init];
        
    });
    return instance;
}

@end
