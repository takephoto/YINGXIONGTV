
//  HomeViewController.m
//  YINXIONGTV
//
//  Created by 杨洋 on 16/5/21.
//  Copyright (c) 2016年 杨洋. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
{
    
}
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self addTitleView] ;
    
}

- (void) addTitleView
{
    
    UIImage     *logo       = [UIImage imageNamed:@"logo"] ;
    UIImageView *logoView   = [[UIImageView alloc] initWithImage:logo] ;

    logoView.frame = CGRectMake(0, 0, 82, 28) ;
    logoView.center = self.navigationItem.titleView.center ;
    
    self.navigationItem.titleView = logoView ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(indexPath.section == 0)
    {
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"banner"] ;
        
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"banner"] ;
        }
        
        return cell ;
    }else{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"category"] ;
        
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:@"category"] ;
        }
        
        return cell ;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.00001f ;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0)
    {
        return 245 ;
    }else{
        return 223 ;
    }
}





@end
