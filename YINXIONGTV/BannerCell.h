//
//  BannerCell.h
//  YINXIONGTV
//
//  Created by 杨洋 on 16/5/23.
//  Copyright (c) 2016年 杨洋. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BannerCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIScrollView *categoryScrollView;
@property (weak, nonatomic) IBOutlet UILabel *carouslLabel;
@property (weak, nonatomic) IBOutlet UIScrollView *carouselScrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *imagePageControl;

@end
