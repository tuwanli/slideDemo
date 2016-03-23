//
//  ModuleOneVC.m
//  slideDemo
//
//  Created by 涂婉丽 on 15/12/10.
//  Copyright (c) 2015年 涂婉丽. All rights reserved.
//

#import "ModuleOneVC.h"
#define k_width [[UIScreen mainScreen]applicationFrame].size.width
#define k_height [[UIScreen mainScreen]applicationFrame].size.height
@interface ModuleOneVC ()

@end

@implementation ModuleOneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
}
- (void)initUI
{
    

    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, k_width, k_height-80) style:UITableViewStylePlain];
    self.tableView.tableHeaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 0, 0.1)];
    self.tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;

    [self.view addSubview:_tableView];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 6;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        
    }
    cell.textLabel.text = @"模块one测试数据";
    return cell;
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
