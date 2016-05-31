//
//  FirstViewController.h
//  L011A
//
//  Created by Student04 on 16/5/31.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface FirstViewController : UIViewController<SecondViewControllerDelegate>


@property (nonatomic,strong) UIButton *jumpBtn;
@property (nonatomic,strong) UILabel *label;
@end
