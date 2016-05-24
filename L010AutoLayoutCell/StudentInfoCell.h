//
//  StudentInfoCell.h
//  L010AutoLayoutCell
//
//  Created by Student04 on 16/5/23.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Student.h"
#import "CellFrameInfo.h"

@interface StudentInfoCell : UITableViewCell

- (void) setCellData:(Student *)student frameInfo:(CellFrameInfo *)frameInfo;

@end
