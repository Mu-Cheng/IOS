//
//  FirstViewController.m
//  L011A
//
//  Created by Student04 on 16/5/31.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "Singleton.h"

@interface FirstViewController ()


@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    self.title = @"one";
    
    self.jumpBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 80, 50)];
    [self.jumpBtn setTitle:@"跳转" forState:UIControlStateNormal];
    [self.jumpBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.jumpBtn.backgroundColor = [UIColor grayColor];
    [self.jumpBtn addTarget:self action:@selector(jumpBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.jumpBtn];
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(50, 200, 100, 80)];
    //    self.label.text = instance.strValue;
    self.label.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.label];

    
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
//    Singleton *instance = [Singleton getSingleInstance];
//    self.inputTF.text = instance.strValue;
}

- (void)jumpBtnClick{
    SecondViewController *secVC = [[SecondViewController alloc]init];
//    Singleton *instance = [Singleton getSingleInstance];
//    self.inputTF =
//    secVC.userName = self.inputTF.text;
//    Singleton *instance = [Singleton getSingleInstance];
//    NSLog(@"第一次获得的单例：%@",instance);
    secVC.delegate = self;
    [self.navigationController pushViewController:secVC animated:YES];
    
}

- (void)haveGetUserName:(NSString *)userName{
    self.label.text = userName;
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
