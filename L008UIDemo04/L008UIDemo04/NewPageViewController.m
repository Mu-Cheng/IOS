//
//  NewPageViewController.m
//  L008UIDemo04
//
//  Created by Student04 on 16/5/16.
//  Copyright © 2016年 doudou. All rights reserved.
//

#import "NewPageViewController.h"

@interface NewPageViewController ()

@end

@implementation NewPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = self.name;
    
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 150, 100)];
    label.center = CGPointMake(self.view.center.x, self.view.center.y);
    label.text = self.name;
    label.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:label];
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
