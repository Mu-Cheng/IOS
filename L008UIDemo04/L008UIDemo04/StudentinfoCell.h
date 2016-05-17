//
//  StudentinfoCell.h
//  L008UIDemo04
//
//  Created by Student04 on 16/5/17.
//  Copyright © 2016年 doudou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Student.h"

@interface StudentinfoCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *avaterImageView;
@property (weak, nonatomic) IBOutlet UILabel *nickNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *recentMsgLabel;

- (void) setStudentInfo:(Student *)student;

@end
