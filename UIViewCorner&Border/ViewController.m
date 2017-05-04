//
//  ViewController.m
//  UIViewCorner&Border
//
//  Created by 厉国辉 on 2017/5/4.
//  Copyright © 2017年 GofeyLee. All rights reserved.
//

#import "ViewController.h"
#import "UIView+GFCorner.h"
#import "UIView+GFBorder.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width / 2 - 50, [UIScreen mainScreen].bounds.size.height / 2 - 50, 100, 100)];
    [self.view addSubview:img];
    img.image = [UIImage imageNamed:@"image0"];

    
    [img cornerWithRadius:10 direction:CornerDirectionTypeBottomLeft|CornerDirectionTypeBottomRight];
    
    [img addBorderTo:BorderTypeTop borderColor:[UIColor blackColor]];
    [img addBorderTo:BorderTypeRight borderSize:CGSizeMake(2, 50) borderColor:[UIColor blueColor]];
    [img addBorderTo:BorderTypeLeft borderSize:CGSizeMake(2, 50) borderColor:[UIColor blueColor]];
    [img addBorderTo:BorderTypeTop borderSize:CGSizeMake(50, 2) borderColor:[UIColor blueColor]];
    [img addBorderTo:BorderTypeBottom borderSize:CGSizeMake(50, 2) borderColor:[UIColor blueColor]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
