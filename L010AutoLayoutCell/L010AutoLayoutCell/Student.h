//
//  Student.h
//  L008UIDemo04
//
//  Created by Student04 on 16/5/16.
//  Copyright © 2016年 doudou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (nonatomic ,strong)NSString *nickName;
@property (nonatomic ,strong)NSString *recentMsg;
@property (nonatomic ,strong)NSString *avaterImageName;
@property (nonatomic ,strong)NSString *time;

- (instancetype)initWithNickName:(NSString *)nickName recentMsg:(NSString *) recentMsg avaterImageName: (NSString *)avaterImageName time:(NSString *)time;


@end
