//
//  UIView+CornerBorder.m
//  UIViewCorner&Border
//
//  Created by 厉国辉 on 2017/5/4.
//  Copyright © 2017年 GofeyLee. All rights reserved.
//

#import "UIView+GFCorner.h"

@implementation UIView (GFCorner)

- (void)cornerWithRadius:(CGFloat)cornerRadius {
    
    [self cornerWithRadius:cornerRadius direction:CornerDirectionTypeAllCorners];
}

- (void)cornerWithRadius:(CGFloat)cornerRadius direction:(CornerDirectionType) cornerType{
    UIBezierPath *maskPath = nil;
    
    switch (cornerType) {
        case CornerDirectionTypeAllCorners:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.layer.bounds cornerRadius:cornerRadius];
            break;
        case CornerDirectionTypeTop:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.layer.bounds byRoundingCorners:UIRectCornerTopRight | UIRectCornerTopLeft cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
            break;
        case CornerDirectionTypeBottom:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.layer.bounds byRoundingCorners:UIRectCornerBottomRight | UIRectCornerBottomLeft cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
            break;
        case CornerDirectionTypeLeft:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.layer.bounds byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerTopLeft cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
            break;
        case CornerDirectionTypeRight:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.layer.bounds byRoundingCorners:UIRectCornerTopRight | UIRectCornerBottomRight cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
            break;
        case CornerDirectionTypeBottomRight:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.layer.bounds byRoundingCorners:UIRectCornerBottomRight cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
            break;
        case CornerDirectionTypeBottomLeft:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.layer.bounds byRoundingCorners:UIRectCornerBottomLeft cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
            break;
        case CornerDirectionTypeTopLeft:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.layer.bounds byRoundingCorners:UIRectCornerTopLeft cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
            break;
        case CornerDirectionTypeTopRight:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.layer.bounds byRoundingCorners:UIRectCornerTopRight cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
            break;
        default:
            if (cornerType == (CornerDirectionTypeBottomRight|CornerDirectionTypeTop)) {
                maskPath = [UIBezierPath bezierPathWithRoundedRect:self.layer.bounds byRoundingCorners:UIRectCornerTopRight|UIRectCornerTopLeft|UIRectCornerBottomRight cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
            }else if(cornerType == (CornerDirectionTypeBottomLeft | CornerDirectionTypeTop)){
                maskPath = [UIBezierPath bezierPathWithRoundedRect:self.layer.bounds byRoundingCorners:UIRectCornerTopRight|UIRectCornerBottomLeft|UIRectCornerTopLeft cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
                
            }else if (cornerType == (CornerDirectionTypeTopLeft | CornerDirectionTypeBottom)){
                maskPath = [UIBezierPath bezierPathWithRoundedRect:self.layer.bounds byRoundingCorners:UIRectCornerBottomRight|UIRectCornerBottomLeft|UIRectCornerTopLeft cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
            }else if (cornerType == (CornerDirectionTypeTopRight | CornerDirectionTypeBottom)){
                maskPath = [UIBezierPath bezierPathWithRoundedRect:self.layer.bounds byRoundingCorners:UIRectCornerBottomRight|UIRectCornerBottomLeft|UIRectCornerTopRight cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
            }else{
                maskPath = [UIBezierPath bezierPathWithRoundedRect:self.layer.bounds cornerRadius:cornerRadius];
            }
            break;
    }
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.layer.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

@end
