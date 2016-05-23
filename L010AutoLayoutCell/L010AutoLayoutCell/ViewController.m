//
//  ViewController.m
//  L010AutoLayoutCell
//
//  Created by Student04 on 16/5/23.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@interface ViewController ()

@property (nonatomic ,strong) UITableView *mainTableView;
@property (nonatomic ,strong) NSArray *dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadDataFromWeb];
    
    self.view.backgroundColor = [UIColor orangeColor];
    CGRect tableViewFrame = CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height-64);
    
    self.mainTableView = [[UITableView alloc]initWithFrame:tableViewFrame style:UITableViewStylePlain];
    self.mainTableView.backgroundColor = [UIColor grayColor];
    self.mainTableView.delegate = self;
    self.mainTableView.dataSource = self;
    [self.view addSubview:self.mainTableView];
    

}

- (void) loadDataFromWeb{
    Student *student1 = [[Student alloc]initWithNickName:@"小明" recentMsg:@"中午吃饭吗？中午吃饭吗？中午吃饭吗？中午吃饭吗？中午吃饭吗？中午吃饭吗？" avaterImageName:@"" time:@"11:10"];
    Student *student2 = [[Student alloc]initWithNickName:@"小红" recentMsg:@"你在干什么" avaterImageName:@"" time:@"8:10"];
    Student *student3 = [[Student alloc]initWithNickName:@"小刚" recentMsg:@"放学操场等我" avaterImageName:@"" time:@"昨天 18:10"];
    self.dataArr = @[student1,student2,student3];
}

//控制行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}
//控制每一行样式
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    return nil;
}
//行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 0;
}
//点击事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

@end
