//
//  ViewController.m
//  L009UITableViewDemo
//
//  Created by Student04 on 16/5/16.
//  Copyright © 2016年 MuChen. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *mainTableView;
//签协议
@property (nonatomic ,strong) NSArray *dataArr;

@end

@implementation ViewController

#pragma mark - 生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //    准备数据源
    [self loadDataFromWeb];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

#pragma mark - 表视图协议

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
    NSLog(@"点击了%ld行",(long)indexPath.row);
    Student *student = self.dataArr[indexPath.row];
    NSLog(@"当前学生是：%@",student.name);
}


@end
