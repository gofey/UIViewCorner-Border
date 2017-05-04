//
//  UIView+Border.h
//  UIViewCorner&Border
//
//  Created by 厉国辉 on 2017/5/4.
//  Copyright © 2017年 GofeyLee. All rights reserved.
//

#import <UIKit/UIKit.h>

//需要添加边框的方向
typedef NS_OPTIONS(NSInteger, BorderDirectionType) {
    BorderTypeTop = 1 << 0,
    BorderTypeRight = 1 << 1,
    BorderTypeLeft = 1 << 2 ,
    BorderTypeBottom = 1 << 3,
};

@interface UIView (GFBorder)

/**
 为某一边添加边框
 默认边框宽度是1

 @param borderType 边框方向  枚举 类型
 @param color 边框颜色
 */
- (void)addBorderTo:(BorderDirectionType)borderType borderColor:(UIColor*) color;



/**
 为某一边添加边框
设置边框宽度，长度。也就是cgsize

 @param borderType 边框方向  枚举类型
 @param size 边框size
 @param color 边框颜色
 */
- (void)addBorderTo:(BorderDirectionType)borderType borderSize:(CGSize)size borderColor:(UIColor*) color; 

@end
