//
//  CellFrameInfo.h
//  L010AutoLayoutCell
//
//  Created by Student04 on 16/5/23.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#include "Student.h"

@interface CellFrameInfo : NSObject

@property (nonatomic ,assign) CGRect avaterImageViewFrame;
@property (nonatomic ,assign) CGRect nickNameLabelFrame;
@property (nonatomic ,assign) CGRect timeLabelFrame;
@property (nonatomic ,assign) CGRect recentMsgLableFrame;
@property (nonatomic ,assign) CGFloat cellHeight;


//数据源方法
- (instancetype)initWithStudent:(Student *)student;

@end
