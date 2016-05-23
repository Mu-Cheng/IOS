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

@end


@implementation StudentInfoCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
