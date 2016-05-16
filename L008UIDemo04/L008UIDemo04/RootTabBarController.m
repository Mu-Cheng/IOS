//
//  RootTabBarController.m
//  L008UIDemo04
//
//  Created by Student04 on 16/5/10.
//  Copyright © 2016年 doudou. All rights reserved.
//

#import "RootTabBarController.h"
//管理下面四个界面
#import "FavotiteViewController.h"
#import "HistoryViewController.h"
#import "SearchViewController.h"
#import "MoreViewController.h"

@interface RootTabBarController ()

@end

@implementation RootTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];

    [self initViewControllers];

}

- (void)initViewControllers{
    FavotiteViewController *favVC = [[FavotiteViewController alloc]init];
    HistoryViewController  *hisVC = [[HistoryViewController alloc]init];
    SearchViewController   *serVC = [[SearchViewController alloc]init];
    MoreViewController     *morVC = [[MoreViewController alloc]init];
//    字面量放置
    NSArray *vcArr = @[favVC,hisVC,serVC,morVC];
    NSMutableArray *navArr = [[NSMutableArray alloc]initWithCapacity:vcArr.count];
    for (int i = 0; i < vcArr.count; i++) {
        UINavigationController *navVC = [[UINavigationController alloc]
                                         initWithRootViewController:vcArr[i]];
        [navArr addObject:navVC];
    }
    
    self.viewControllers = navArr;
    
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
