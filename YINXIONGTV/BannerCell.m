//
//  BannerCell.m
//  YINXIONGTV
//
//  Created by 杨洋 on 16/5/23.
//  Copyright (c) 2016年 杨洋. All rights reserved.
//

#import "BannerCell.h"
#import <objc/runtime.h>

#define MAX_PAGE 3 
#define MIN_PAGE 0 
#define PAGECOUNT 4


@interface BannerCell()<UIScrollViewDelegate>
{
    NSInteger currentIndex ;
    CGPoint startOffSet ;
    NSTimer *timer ;
    NSArray *titles ;
}
@end

@implementation BannerCell

- (void)awakeFromNib {
    // Initialization code
    
    titles = @[@"2016LPSP春季联赛正在直播",@"国服最强猴王",@"徒步穿越中国",@"low战low"] ;
    
    for (int i = 0; i < PAGECOUNT; i++) {
        NSString *name = [NSString stringWithFormat:@"game_0%d.jpg",(i + 1)] ;
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:name]] ;
        imageView.tag = i + 1 ;
        imageView.frame = CGRectMake(i * [UIScreen mainScreen].bounds.size.width, 0, [UIScreen mainScreen].bounds.size.width, _carouselScrollView.frame.size.height) ;
        [_carouselScrollView addSubview:imageView] ;
    }
    _carouselScrollView.pagingEnabled = YES ; //单页滑动
    _carouselScrollView.bounces = NO ;  //关闭反震效果
    _carouselScrollView.showsHorizontalScrollIndicator = NO ; //隐藏滑动条
    _carouselScrollView.showsVerticalScrollIndicator = NO ;
    _carouselScrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width * PAGECOUNT, 0) ;
    
    
    _carouselScrollView.delegate = self ;
    
    
    for (int i = 0; i < 4; i++) {
        NSString *name = [NSString stringWithFormat:@"game_0%d.jpg",(i + 1)] ;
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:name]] ;
        imageView.frame = CGRectMake(i * (_categoryScrollView.bounds.size.height / 2) + 30 * i + 10, _categoryScrollView.bounds.size.height / 8, _categoryScrollView.bounds.size.height /2, _categoryScrollView.bounds.size.height / 2) ;
        imageView.layer.cornerRadius = imageView.frame.size.width / 2 ;
        imageView.clipsToBounds = YES ;
        
        UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(imageView.frame.origin.x, imageView.frame.origin.y + imageView.frame.size.height + 5, imageView.frame.size.width, 20)] ;
        title.font = [UIFont systemFontOfSize:12] ;
        title.textAlignment = NSTextAlignmentCenter ;
        title.text = @"测试" ;
        [_categoryScrollView addSubview:title] ;
        [_categoryScrollView addSubview:imageView] ;
    }
    
    
    
    [self addTimer] ;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews
{
    
}

- (void) addTimer
{
    timer = [NSTimer scheduledTimerWithTimeInterval:2
                                             target:self
                                           selector:@selector(nextImage)
                                           userInfo:nil
                                            repeats:YES] ;
}

- (void) removeTimer
{
    [timer invalidate] ;
}

- (void) nextImage
{
    int page = (int)_imagePageControl.currentPage ;
    
    if(page == MAX_PAGE)
        page = 0 ;
    else
        page ++ ;
    
    CGFloat x = _carouselScrollView.frame.size.width * page ;
    
    [_carouselScrollView setContentOffset:CGPointMake(x, 0) animated:YES] ;
    
    _imagePageControl.currentPage = page ;
    _carouslLabel.text = titles[page] ;
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    
}


- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    startOffSet = scrollView.contentOffset ;
    
    [self removeTimer] ;
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    //判断左划 右划
    
    NSLog(@"startOffSet = %d, offSet = %d",(int)startOffSet.x,(int)scrollView.contentOffset.x) ;
    
    int page = (int)_imagePageControl.currentPage ;
    
    if(scrollView.contentOffset.x - startOffSet.x > 0)
    {
        //右滑
        page ++ ;
        
    }else if(scrollView.contentOffset.x - startOffSet.x < 0)
    {
        //左滑
        page -- ;
    }
    
    _imagePageControl.currentPage = page ;
    _carouslLabel.text = titles[page] ;
    [self addTimer] ;
    
}

@end
