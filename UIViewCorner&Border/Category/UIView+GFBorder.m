//
//  UIView+Border.m
//  UIViewCorner&Border
//
//  Created by 厉国辉 on 2017/5/4.
//  Copyright © 2017年 GofeyLee. All rights reserved.
//

#import "UIView+GFBorder.h"

@implementation UIView (GFBorder)

- (void)addBorderTo:(BorderDirectionType)borderType borderColor:(UIColor*) color {
    CGFloat width = self.layer.bounds.size.width;
    CGFloat height = self.layer.bounds.size.height;
    
    CALayer *borderLayer = [CALayer layer];
    borderLayer.backgroundColor = color.CGColor;
    [self.layer addSublayer:borderLayer];
    switch (borderType) {
        case BorderTypeTop:
            borderLayer.frame = CGRectMake(0, 0, width, 1);
            break;
        case BorderTypeLeft:
            borderLayer.frame = CGRectMake(0, 0, 1, height);
            break;
        case BorderTypeRight:
            borderLayer.frame = CGRectMake(width - 1, 0, 1, height);
            break;
        case BorderTypeBottom:
            borderLayer.frame = CGRectMake(0, height - 1, width, 1);
            break;
        default:
            break;
    }
    
}
- (void)addBorderTo:(BorderDirectionType)borderType borderSize:(CGSize)size borderColor:(UIColor*) color {
    CGFloat layerWidth = self.layer.bounds.size.width;
    CGFloat layerheight = self.layer.bounds.size.height;
    
    CGFloat width = size.width;
    CGFloat height = size.height;
    
    CALayer *borderLayer = [CALayer layer];
    borderLayer.backgroundColor = color.CGColor;
    [self.layer addSublayer:borderLayer];
    switch (borderType) {
        case BorderTypeTop:
            borderLayer.frame = CGRectMake((layerWidth - width) / 2, 0, width, height);
            break;
        case BorderTypeLeft:
            borderLayer.frame = CGRectMake(0, (layerheight - height) / 2, width, height);
            break;
        case BorderTypeRight:
            borderLayer.frame = CGRectMake(layerWidth - width, (layerheight - height) / 2, width, height);
            break;
        case BorderTypeBottom:
            borderLayer.frame = CGRectMake((layerWidth - width) / 2, layerheight - height, width, height);
            break;
        default:
            break;
    }
    
    
}
@end
