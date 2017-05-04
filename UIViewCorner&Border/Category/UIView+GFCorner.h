//
//  UIView+CornerBorder.h
//  UIViewCorner&Border
//
//  Created by 厉国辉 on 2017/5/4.
//  Copyright © 2017年 GofeyLee. All rights reserved.
//

#import <UIKit/UIKit.h>

//圆角方向
typedef NS_OPTIONS(NSInteger, CornerDirectionType) {
    CornerDirectionTypeTopLeft = 1 << 0,
    CornerDirectionTypeTopRight = 1 << 1,
    CornerDirectionTypeBottomLeft = 1 << 2 ,
    CornerDirectionTypeBottomRight = 1 << 3,
    
    CornerDirectionTypeLeft = (CornerDirectionTypeTopLeft | CornerDirectionTypeBottomLeft),
    CornerDirectionTypeRight = (CornerDirectionTypeTopRight | CornerDirectionTypeBottomRight),
    CornerDirectionTypeTop = (CornerDirectionTypeTopLeft | CornerDirectionTypeTopRight),
    CornerDirectionTypeBottom = (CornerDirectionTypeBottomLeft | CornerDirectionTypeBottomRight),
    CornerDirectionTypeAllCorners = (CornerDirectionTypeTop | CornerDirectionTypeBottom),
};

@interface UIView (GFCorner)


/**
 为所有地方添加圆角

 @param cornerRadius 圆角半径
 */
- (void)cornerWithRadius:(CGFloat)cornerRadius;

/**
 为具体的某一个或者某一些地方添加圆角

 
 
 @param cornerRadius 圆角半径
 @param cornerType 需要添加圆角的地方 添加多个圆角CornerDirectionTypeBottom | CornerDirectionTypeTopLeft（以底部和左上为例子）
 
 */
- (void)cornerWithRadius:(CGFloat)cornerRadius direction:(CornerDirectionType)cornerType;

@end
