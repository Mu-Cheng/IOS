//
//  StudentInfoCell.m
//  L010AutoLayoutCell
//
//  Created by Student04 on 16/5/23.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import "StudentInfoCell.h"

@interface StudentInfoCell ()
@property (weak, nonatomic) IBOutlet UIImageView *avaterImageView;
@property (weak, nonatomic) IBOutlet UILabel *nickNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *recentMsgLabel;

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (strong, nonatomic) Student *currentStudent;
@property (strong, nonatomic) CellFrameInfo *currentFrameInfo;

@end


@implementation StudentInfoCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void) setCellData:(Student *)student frameInfo:(CellFrameInfo *)frameInfo{
    self.currentStudent = student;
    self.currentFrameInfo = frameInfo;
//  1  展示数据
    self.nickNameLabel.text = self.currentStudent.nickName;
    self.timeLabel.text = self.currentStudent.time;
    self.recentMsgLabel.text = self.currentStudent.recentMsg;
//  2  绘制子控件，强制重绘
    [self layoutIfNeeded];
}

- (void) layoutIfNeeded{
    [super layoutSubviews];
    
    self.avaterImageView.frame = self.currentFrameInfo.avaterImageViewFrame;
    self.nickNameLabel.frame = self.currentFrameInfo.nickNameLabelFrame;
    self.timeLabel.frame = self.currentFrameInfo.timeLabelFrame;
    self.recentMsgLabel.frame = self.currentFrameInfo.recentMsgLableFrame;
}

@end
