//
//  MineViewController.m
//  YINXIONGTV
//
//  Created by 杨洋 on 16/5/30.
//  Copyright (c) 2016年 杨洋. All rights reserved.
//

#import "MineViewController.h"
#import "MineHeadView.h"

@interface MineViewController ()
{
    NSDictionary *datas ;
}
@end

@implementation MineViewController

static NSString *idx = @"MineCell" ;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addTableHeadView] ;
    
    
    datas = [NSDictionary dictionaryWithObjectsAndKeys:@[@"我的关注",@"观看历史",@"开播提醒",@"新手任务",@"游戏中心"],@"mine",@[@"系系统设置",@"意见反馈"],@"system",nil] ;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void) addTableHeadView
{
    MineHeadView *headView = [[MineHeadView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.bounds.size.width, 150)] ;
    headView.backgroundColor = [UIColor redColor] ;
    self.tableView.tableHeaderView = headView ;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return [datas allKeys].count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSString *key = [datas allKeys][section] ;
    NSArray *functions = [datas objectForKey:key] ;
    
    return functions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:idx] ;
    NSString *key = [datas allKeys][indexPath.section] ;
    NSArray *functions = [datas objectForKey:key] ;
    cell.textLabel.text = [functions objectAtIndex:indexPath.row] ;
    cell.textLabel.font = [UIFont systemFontOfSize:14] ;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator ;
    return cell ;
}

@end
