//
//  ColumnNavigationController.m
//  YINXIONGTV
//
//  Created by 杨洋 on 16/5/22.
//  Copyright (c) 2016年 杨洋. All rights reserved.
//

#import "ColumnNavigationController.h"

@interface ColumnNavigationController ()

@end

@implementation ColumnNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_column_sel"]] ;
    [self.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor],NSForegroundColorAttributeName,nil] forState:UIControlStateSelected] ;
    
    //self.searchDisplayController =
    
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
