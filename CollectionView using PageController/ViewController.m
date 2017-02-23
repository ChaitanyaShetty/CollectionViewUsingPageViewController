//
//  ViewController.m
//  CollectionView using PageController
//
//  Created by chaitanya on 22/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
#import "CollectionViewCell.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    array = @[ @{ @"Image" : @"img1.jpg",
                                    @"SubImages" : @[
                                                        @"img2.jpg",
                                                        @"img3.jpg",
                                                        @"img4.jpg",
                                                        @"img5.jpg",
                                                        @"img6.jpg"
                                                
                                                
                                            ]
                                    },
                  
                  
                  
                                 @{ @"Image" : @"image1.png",
                                     @"SubImages" : @[
                                                                  @"image2.png",
                                                                  @"image3.png",
                                                                  @"image4.png"
                                                                  
                                                          
                                                      ]
                                 },
                  
                  
                  
                                 @{ @"Image" : @"img6.png",
                                     @"SubImages" : @[
                                                                  @"img1.png",
                                                                  @"img2.png",
                                                                  @"img3.png",
                                                                  @"img4.png",
                                                                  @"img5.png"
                                                                  
                                                          
                                                      ]
                                    },
               
                                    @{ @"Image" : @"Starbucks Coffee.jpg",
                                       @"SubImages" : @[
                                               @"Thai Shrimp Cake.jpg",
                                               @"Vegetable Curry.jpg",
                                               @"White Chocolate Donut.jpg"
                                               
                                               
                                               ]
                                 }];

    
    
    
    
//    array = @[ @{ @"Image" : @"img1.jpg",
//                  @"SubImages" : @[
//                          @{
//                              @"Images" : @[
//                                      @"img2.jpg",
//                                      @"img3.jpg",
//                                      @"img4.jpg",
//                                      @"img5.jpg",
//                                      @"img6.jpg"
//                                      ]
//                              }
//                          ]
//                  },
//               
//               
//               
//               @{ @"Image" : @"image1.png",
//                   @"SubImages" : @[
//                                    @{
//                                        @"Images" : @[
//                                                @"image2.png",
//                                                @"image3.png",
//                                                @"image4.png"
//                                                ]
//                                        }
//                                    ]
//               },
//               
//               
//               
//               @{ @"Image" : @"img6.png",
//                   @"SubImages" : @[
//                                    @{
//                                        @"Images" : @[
//                                                @"img1.png",
//                                                @"img2.png",
//                                                @"img3.png",
//                                                @"img4.png",
//                                                @"img5.png"
//                                                ]
//                                        }
//                                    ]
//               }];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return array.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"CollectionViewCell";
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.imageView.image = [UIImage imageNamed:[array objectAtIndex:indexPath.item][@"Image"]];
    
   
    return cell;
    
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *path = [[self.collectionView indexPathsForSelectedItems]objectAtIndex:0];
    ViewController2 *vc = [segue destinationViewController];
    vc.array = array[path.item][@"SubImages"];
  //  vc.pageTitle = array[path.item][@"Image"];
}



@end
