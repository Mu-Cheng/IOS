//
//  FavotiteViewController.m
//  L008UIDemo04
//
//  Created by Student04 on 16/5/17.
//  Copyright © 2016年 doudou. All rights reserved.
//

#import "FavotiteViewController.h"
#import "Student.h"
#import "NewPageViewController.h"

@interface FavotiteViewController ()<UITableViewDelegate,UITableViewDataSource>
//添加TableView属性
@property (nonatomic ,strong) UITableView *mainTableView;
@property (nonatomic ,strong) NSArray *dataArr;


@end

@implementation FavotiteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor purpleColor];
    self.title = @"收藏";
    //    隐藏底部栏
    self.hidesBottomBarWhenPushed = YES;
    
    [self loadDataFromWeb];
    self.mainTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0,self.view.bounds.size.width, self.view.bounds.size.height)style:UITableViewStylePlain];
    self.mainTableView.delegate = self;
    self.mainTableView.dataSource = self;
    [self.view addSubview:self.mainTableView];
}

#pragma mark - 加载数据源

- (void) loadDataFromWeb{
    Student *student1 = [[Student alloc]init];
    student1.name = @"小明";
    Student *student2 = [[Student alloc]init];
    student2.name = @"小红";
    Student *student3 = [[Student alloc]init];
    student3.name = @"小刚";
    
    self.dataArr = @[student1,student2,student3];
    
}


//控制表示图有多少行
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
}

//控制每一行用何种样式cell显示
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cellIndentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        Student *student = self.dataArr[indexPath.row];
        cell.textLabel.text = student.name;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

//控制表视图每一行的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}

//点击每一行时如何响应
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Student *student = self.dataArr[indexPath.row];
    NewPageViewController *newVC = [[NewPageViewController alloc]init];
    newVC.name = student.name;
    [self.navigationController pushViewController:newVC animated:YES];
}

@end

