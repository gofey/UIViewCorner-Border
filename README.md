# UIViewCorner-Border
为所有UIView的继承类，切割圆角，添加任意边框

因为这两个功能未必要同时使用，所以是分开的两个文件

圆角：

需要#import "UIView+GFCorner.h"

使用代码如下：
        [img cornerWithRadius:10 direction:CornerDirectionTypeBottom|CornerDirectionTypeTopRight];
  
效果图：

[!images](http://ooy23086i.bkt.clouddn.com/cornerPicture@2x.png)

边框：

需要#import "UIView+GFBorder.h"
使用代码如下：
    [img addBorderTo:BorderTypeTop borderColor:[UIColor blackColor]];
    [img addBorderTo:BorderTypeRight borderSize:CGSizeMake(2, 50) borderColor:[UIColor blueColor]];
    [img addBorderTo:BorderTypeLeft borderSize:CGSizeMake(2, 70) borderColor:[UIColor redColor]];
    [img addBorderTo:BorderTypeBottom borderSize:CGSizeMake(90, 2) borderColor:[UIColor yellowColor]];
 
效果图：

[!images](http://ooy23086i.bkt.clouddn.com/cornerPicture@2x.png)
