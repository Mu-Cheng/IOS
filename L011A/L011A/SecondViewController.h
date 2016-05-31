//
//  SecondViewController.h
//  L011A
//
//  Created by Student04 on 16/5/31.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewControllerDelegate <NSObject>

- (void) haveGetUserName:(NSString *)userName;

@end

@interface SecondViewController : UIViewController

@property (nonatomic,weak)id<SecondViewControllerDelegate>delegate;
//@property (nonatomic,strong) NSString *userName;    
@property (nonatomic,strong) UITextField *inputTF;


@end
