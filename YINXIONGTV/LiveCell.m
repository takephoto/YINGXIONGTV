//
//  LiveCell.m
//  YINXIONGTV
//
//  Created by 杨洋 on 16/5/30.
//  Copyright (c) 2016年 杨洋. All rights reserved.
//

#import "LiveCell.h"

@implementation LiveCell


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame] ;
    
    if(self)
    {
        //self.backgroundColor = [UIColor redColor] ;
        
        //直播内容截图
        UIImageView *snaphot = [[UIImageView alloc] init] ;
        snaphot.image = [UIImage imageNamed:@"room_01.jpg"] ;
        snaphot.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height - 50) ;
        snaphot.layer.cornerRadius = 10 ;
        snaphot.clipsToBounds = YES ;
        
        [self.contentView addSubview:snaphot] ;
        
        //主播头像
        UIImageView *icon = [[UIImageView alloc] init] ;
        icon.image = [UIImage imageNamed:@"touxiang.jpg"] ;
        icon.frame = CGRectMake(10, snaphot.frame.size.height - 49 / 2, 49, 49) ;
        icon.layer.cornerRadius = icon.bounds.size.width / 2 ;
        icon.clipsToBounds = YES ;
        
        [self.contentView addSubview:icon] ;
        
        
        //在线观看人数
        
        UILabel *label = [[UILabel alloc] init] ;
        label.text = @"1.1万" ;
        label.frame = CGRectMake(0, 0, icon.bounds.size.width, 15) ;
        label.center = CGPointMake(icon.center.x, icon.center.y + 49 / 2 + 10) ;
        label.textAlignment = NSTextAlignmentCenter ;
        label.backgroundColor = [UIColor grayColor] ;
        label.font = [UIFont systemFontOfSize:12] ;
        label.layer.cornerRadius = 5 ;
        label.clipsToBounds = YES ;
        label.alpha = 0.7 ;
        
        [self.contentView addSubview:label] ;
        
        //房间标题
        UILabel *title = [[UILabel alloc] init] ;
        title.text = @"今晚8:00直播" ;
        
        CGFloat x = icon.frame.origin.x + icon.frame.size.width + 5 ;
        CGFloat y = snaphot.bounds.size.height + 5;
        CGFloat width = self.bounds.size.width - x ;
        CGFloat heigt = 20 ;
        
        title.frame = CGRectMake(x,
                                 y,
                                 width,
                                 heigt) ;
        
        title.font = [UIFont systemFontOfSize:13] ;
        [self.contentView addSubview:title] ;
        
        
        //房间描述
        UILabel *descript = [[UILabel alloc] init] ;
        descript.font = [UIFont systemFontOfSize:12] ;
        descript.textColor = [UIColor lightGrayColor] ;
        descript.text = @"最强王者" ;
        descript.frame = CGRectMake(0, 0, self.bounds.size.width - label.frame.origin.x - label.frame.size.width, 15) ;
        descript.center = CGPointMake(label.center.x + label.bounds.size.width / 2 + 5 + descript.frame.size.width / 2, label.center.y) ;
        [self.contentView addSubview:descript] ;
        
    }
    
    return self ;
}


@end
