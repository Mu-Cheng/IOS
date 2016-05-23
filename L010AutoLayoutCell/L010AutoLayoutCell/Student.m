//
//  Student.m
//  L008UIDemo04
//
//  Created by Student04 on 16/5/16.
//  Copyright © 2016年 doudou. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithNickName:(NSString *)nickName recentMsg:(NSString *) recentMsg avaterImageName: (NSString *)avaterImageName time:(NSString *)time{
    self = [super init];
    if (self) {
        self.nickName = nickName;
        self.recentMsg = recentMsg;
        self.avaterImageName = avaterImageName;
        self.time = time;
    }
    return self;
}


@end
