//
//  ViewController2.h
//  CollectionView using PageController
//
//  Created by chaitanya on 22/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PageContentViewController.h"

@interface ViewController2 : UIViewController<UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageViewController;

@property (strong, nonatomic)  NSArray *array;
//@property (strong, nonatomic) NSArray *pageTitle;

@end
