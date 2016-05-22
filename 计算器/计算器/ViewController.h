//
//  ViewController.h
//  计算器
//
//  Created by MuChen on 16/5/18.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculate.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UILabel *inputLabel;


- (IBAction)leftBtnClick:(id)sender;

- (IBAction)rightBtnClick:(id)sender;

- (IBAction)pointBtnClick:(id)sender;

- (IBAction)calculateBtnClick:(id)sender;

- (IBAction)cleanBtnClick:(id)sender;

- (IBAction)backBtnClick:(id)sender;

- (IBAction)addBtnClick:(id)sender;

- (IBAction)subBtnClick:(id)sender;

- (IBAction)mulBtnClick:(id)sender;

- (IBAction)divBtnClick:(id)sender;

- (IBAction)input1BtnClick:(id)sender;

- (IBAction)input2BtnClick:(id)sender;

- (IBAction)input3BtnClick:(id)sender;

- (IBAction)input4BtnClick:(id)sender;

- (IBAction)input5BtnClick:(id)sender;

- (IBAction)input6BtnClick:(id)sender;

- (IBAction)input7BtnClick:(id)sender;

- (IBAction)input8BtnClick:(id)sender;

- (IBAction)input9BtnClick:(id)sender;

- (IBAction)input0BtnClick:(id)sender;


@end

