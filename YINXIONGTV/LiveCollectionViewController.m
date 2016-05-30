//
//  LiveCollectionViewController.m
//  YINXIONGTV
//
//  Created by 杨洋 on 16/5/30.
//  Copyright (c) 2016年 杨洋. All rights reserved.
//

#import "LiveCollectionViewController.h"
#import "LiveCell.h"

@interface LiveCollectionViewController ()

@end

@implementation LiveCollectionViewController

static NSString * const reuseIdentifier = @"LiveCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self.collectionView registerClass:[LiveCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LiveCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

@end
