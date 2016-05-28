//
//  CategoryCell.m
//  YINXIONGTV
//
//  Created by 杨洋 on 16/5/26.
//  Copyright (c) 2016年 杨洋. All rights reserved.
//

#import "CategoryCell.h"

@implementation CategoryCell

- (void)awakeFromNib {
    // Initialization code
    
    _snapshotImageView.image = [UIImage imageNamed:@"room_01.jpg"] ;
    _snapshotImageView.layer.cornerRadius = 5 ;
    _snapshotImageView.clipsToBounds = YES ;
    
    _iconImageView.image = [UIImage imageNamed:@"touxiang.jpg"] ;
    _iconImageView.layer.cornerRadius = _iconImageView.frame.size.width / 2 ;
    _iconImageView.clipsToBounds = YES ;
    
    _countLabel.layer.cornerRadius = 5 ;
    _countLabel.clipsToBounds = YES ;
    
    
    _snapshotImageView2.image = [UIImage imageNamed:@"room_01.jpg"] ;
    _snapshotImageView2.layer.cornerRadius = 5 ;
    _snapshotImageView2.clipsToBounds = YES ;
    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
