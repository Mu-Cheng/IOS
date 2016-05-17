//
//  StudentinfoCell.m
//  L008UIDemo04
//
//  Created by Student04 on 16/5/17.
//  Copyright © 2016年 doudou. All rights reserved.
//

#import "StudentinfoCell.h"

@implementation StudentinfoCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) setStudentInfo:(Student *)student{
    self.avaterImageView.image = [[UIImage imageNamed:student.]]
}



@end
