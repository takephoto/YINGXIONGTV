//
//  MineHeadView.m
//  YINXIONGTV
//
//  Created by 杨洋 on 16/5/30.
//  Copyright (c) 2016年 杨洋. All rights reserved.
//

#import "MineHeadView.h"

@implementation MineHeadView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame] ;
    if(self)
    {
        UIImageView *backgroundView = [[UIImageView alloc] initWithFrame:self.bounds] ;
        [self addSubview:backgroundView] ;
        
        UIButton *icon = [UIButton buttonWithType:UIButtonTypeCustom] ;
        icon.frame = CGRectMake(0, 0, 70, 70) ;
        icon.center = CGPointMake(self.center.x, self.center.y - 20) ;
        [icon setBackgroundImage: [UIImage imageNamed:@"tabbar_person"]  forState:UIControlStateNormal] ;
        [icon setTitle:@"登录" forState:UIControlStateNormal] ;
        icon.titleLabel.font = [UIFont systemFontOfSize:15] ;
        icon.titleEdgeInsets = UIEdgeInsetsMake(90, 0, 0, 0) ;
        
        [backgroundView addSubview:icon] ;
        
        
        UIButton *seed = [UIButton buttonWithType:UIButtonTypeCustom] ;
        seed.frame = CGRectMake(0, 0, 20, 20) ;
        seed.center = CGPointMake(icon.center.x, icon.center.y + 70) ;
        [seed setBackgroundImage:[UIImage imageNamed:@"gift"] forState:UIControlStateNormal] ;
        seed.titleLabel.font = [UIFont systemFontOfSize:10] ;
        
        [seed setTitle:@"0" forState:UIControlStateNormal] ;
        [backgroundView addSubview:seed] ;
        
        UIButton *seed2 = [UIButton buttonWithType:UIButtonTypeCustom] ;
        seed2.frame = CGRectMake(0, 0, 20, 20) ;
        seed2.center = CGPointMake(icon.center.x - 30, icon.center.y + 70) ;
        [seed2 setBackgroundImage:[UIImage imageNamed:@"gift"] forState:UIControlStateNormal] ;
        seed2.titleLabel.font = [UIFont systemFontOfSize:10] ;
        
        [seed2 setTitle:@"0" forState:UIControlStateNormal] ;
        [backgroundView addSubview:seed2] ;
        
        
        UIButton *pay = [UIButton buttonWithType:UIButtonTypeCustom] ;
        pay.frame = CGRectMake(0, 0, 40, 20) ;
        pay.center = CGPointMake(icon.center.x + 40, icon.center.y + 70) ;
        [pay setTitle:@"充值" forState:UIControlStateNormal] ;
        pay.layer.borderWidth = 1 ;
        pay.layer.borderColor = [UIColor lightGrayColor].CGColor ;
        pay.layer.cornerRadius = 5 ;
        pay.titleLabel.font = [UIFont systemFontOfSize:12] ;
        [backgroundView addSubview:pay] ;
    }
    return self ;
}

@end
