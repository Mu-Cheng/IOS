//
//  Calculate.h
//  计算器
//
//  Created by MuChen on 16/5/21.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculate : NSObject

@property (strong,nonatomic) NSString *input;

- (NSString*) calculate:(NSString*)input;
+ (int) getString:(NSString*)input;

@end
