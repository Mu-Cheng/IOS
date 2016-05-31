//
//  SecondViewController.m
//  L011A
//
//  Created by Student04 on 16/5/31.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import "SecondViewController.h"
#import "Singleton.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.inputTF = [[UITextField alloc]initWithFrame:CGRectMake(100, 200, 100, 50)];
    self.inputTF.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.inputTF];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    self.title = @"two";
//    Singleton *instance = [Singleton getSingleInstance];
//    NSLog(@"第二次获得的单例：%@",instance);
//    instance.strValue = @"return~";

            
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.delegate haveGetUserName:self.inputTF.text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
