//
//  PageContentViewController.h
//  CollectionView using PageController
//
//  Created by chaitanya on 22/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageContentViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;


@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;

@end
