//
//  ViewController.m
//  计算器
//
//  Created by MuChen on 16/5/18.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.inputLabel.text = @"";
    self.outputLabel.text = @"0";
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)leftBtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"("];
}

- (IBAction)rightBtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@")"];
}

- (IBAction)pointBtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"."];
}

- (IBAction)calculateBtnClick:(id)sender {
    Calculate *run = [[Calculate alloc]init];
    run.input = self.inputLabel.text;
    self.outputLabel.text = [run calculate:run.input];
//    NSLog(@"%@",self.outputLabel.text);
}

- (IBAction)cleanBtnClick:(id)sender {
    self.inputLabel.text = @"";
    self.outputLabel.text = @"0";
}

- (IBAction)backBtnClick:(id)sender {
    if(![self.inputLabel.text isEqual:@""])
        self.inputLabel.text = [self.inputLabel.text substringToIndex:[self.inputLabel.text length]-1];
}

- (IBAction)addBtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"+"];
}

- (IBAction)subBtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"-"];
}

- (IBAction)mulBtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"*"];
}

- (IBAction)divBtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"/"];
}

- (IBAction)input1BtnClick:(id)sender {
    
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"1"];
}

- (IBAction)input2BtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"2"];
}

- (IBAction)input3BtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"3"];
}

- (IBAction)input4BtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"4"];
}

- (IBAction)input5BtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"5"];
}

- (IBAction)input6BtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"6"];
}

- (IBAction)input7BtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"7"];
}

- (IBAction)input8BtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"8"];
}

- (IBAction)input9BtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"9"];
}

- (IBAction)input0BtnClick:(id)sender {
    self.inputLabel.text = [self.inputLabel.text stringByAppendingString:@"0"];
}
@end
