//
//  NewsfeedVC.m
//  Volu
//
//  Created by Khant Thu Linn on 10/11/15.
//  Copyright © 2015 Khant Thu Linn. All rights reserved.
//

#import "NewsfeedVC.h"
#import "NewsFeedCell.h"

@interface NewsfeedVC () <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *cvMain;

@end

@implementation NewsfeedVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NewsFeedCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"NewsFeedCell" forIndexPath:indexPath];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(CGRectGetWidth(self.view.frame), 100);
}


@end
