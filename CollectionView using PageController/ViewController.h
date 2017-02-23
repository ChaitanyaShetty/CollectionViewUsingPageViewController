//
//  ViewController.h
//  CollectionView using PageController
//
//  Created by chaitanya on 22/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>
{
    NSArray *array;
}

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end

