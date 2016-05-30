//
//  ColumnViewCell.m
//  YINXIONGTV
//
//  Created by 杨洋 on 16/5/26.
//  Copyright (c) 2016年 杨洋. All rights reserved.
//

#import "ColumnViewCell.h"

@implementation ColumnViewCell


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame] ;
    if(self)
    {
        self.backgroundColor = [UIColor whiteColor] ;
        
        
        UIImageView *columnImageView = [[UIImageView alloc] init] ;
        columnImageView.image = [UIImage imageNamed:@"lushi.jpg"] ;
        columnImageView.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height - 20) ;
        [self.contentView addSubview:columnImageView] ;
        
        UILabel *title = [[UILabel alloc] init] ;
        title.text = @"炉石传说" ;
        title.font = [UIFont systemFontOfSize:15] ;
        title.textAlignment = NSTextAlignmentCenter ;
        title.frame = CGRectMake(0, self.bounds.size.height - 20, self.bounds.size.width, 20) ;
        [self.contentView addSubview:title] ;
        
        UIView *shandowView = [[UIView alloc] init] ;
        shandowView.frame = CGRectMake(0, self.bounds.size.height - 2, self.bounds.size.width, 2) ;
        shandowView.backgroundColor = [UIColor grayColor] ;
        [self.contentView addSubview:shandowView] ;
        
    }
    
    return self ;
}

- (void)awakeFromNib
{
   
}

@end
