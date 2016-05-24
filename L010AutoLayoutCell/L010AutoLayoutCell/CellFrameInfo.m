//
//  CellFrameInfo.m
//  L010AutoLayoutCell
//
//  Created by Student04 on 16/5/23.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import "CellFrameInfo.h"

#define kSubViewLeadingMargin  10 //左边距Leading
#define kSubViewTrailingMargin 10 //右边距
#define kSubViewTopMargin      10 //距顶高度
#define kAvaterImageViewWidth  50 //图像宽高
#define kScreenWidth [UIScreen mainScreen].bounds.size.width


@implementation CellFrameInfo

- (instancetype)initWithStudent:(Student *)student{
    self = [super init];
    if(self){
//        预测头像布局
        [self avaterImageViewFrameMake:student];
//        预测昵称布局
        [self nickNameLabelFrameMake:student];
//        时间布局
        [self timeLabelFrameMake:student];
//        最近消息布局
        [self recentMsgLabelFrameMake:student];
        
        self.cellHeight = self.recentMsgLableFrame.origin.y + self.recentMsgLableFrame.size.height + 20;
    }
    return self;
}

- (void)avaterImageViewFrameMake:(Student *)student{
    self.avaterImageViewFrame = CGRectMake(kSubViewLeadingMargin, kSubViewTopMargin, kAvaterImageViewWidth, kAvaterImageViewWidth);
}

- (void)nickNameLabelFrameMake:(Student *)student{
    CGFloat nickNameLabelX = self.avaterImageViewFrame.origin.x + self.avaterImageViewFrame.size.width + kSubViewLeadingMargin;
    
    CGSize size = [student.nickName sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    
    self.nickNameLabelFrame = CGRectMake(nickNameLabelX, kSubViewTopMargin, size.width, size.height);
}

- (void) timeLabelFrameMake:(Student *)student{
    
    CGSize size = [student.time sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]}];
    
    CGFloat timeLabelX = kScreenWidth - size.width - kSubViewTrailingMargin;
    
    self.nickNameLabelFrame = CGRectMake(timeLabelX, kSubViewTopMargin, size.width, size.height);
}

- (void) recentMsgLabelFrameMake:(Student *)student{
    CGFloat recentMsgLabelX = self.nickNameLabelFrame.origin.x;
    CGFloat recentMsgLabelY = self.nickNameLabelFrame.origin.y + self.nickNameLabelFrame.size.height + kSubViewTopMargin;
    CGFloat recentMsgLabelW = kScreenWidth - recentMsgLabelX - kSubViewTrailingMargin;
    CGSize size = [student.recentMsg boundingRectWithSize:CGSizeMake(recentMsgLabelW, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil].size;
    self.recentMsgLableFrame = CGRectMake(recentMsgLabelX, recentMsgLabelY, recentMsgLabelW, size.height);
    
}

@end
