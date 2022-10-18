//
//  ZCQDeviceUIConfig.h
//  ZcqComponets
//
//  Created by 郑创权 on 2022/10/17.
//

#ifndef ZCQDeviceUIConfig_h
#define ZCQDeviceUIConfig_h

//获取device的屏幕宽高
#define MainScreenWidth  [[UIScreen mainScreen]bounds].size.width
#define MainScreenHeight  [[UIScreen mainScreen]bounds].size.height
#define SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#define CurreentViewHeight  self.view.frame.size.height
#define CurreentViewWidth  self.view.frame.size.width

//以375*667为原型进行约束比例
#define ScaleW(width) MainScreenWidth / 375.0 * width
//#define ScaleH(height) MainScreenHeight / 667.0 * height
#define ScaleH(height) MainScreenHeight / 812 * height

//颜色宏定义.
#define RGBHex(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define RGBHexAlpha(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(a)]

//semibold 字体。
#define semiboldFont(fontValue) [UIFont fontWithName:@"PingFangSC-Semibold" size:fontValue];
#define thinFont(fontValue) [UIFont fontWithName:@"PingFangSC-Thin" size:fontValue];
#define mediumFont(fontValue) [UIFont fontWithName:@"PingFangSC-Medium" size:fontValue];

//semibold 字体。
#define semiboldToSizeFont(fontValue) [UIFont fontWithName:@"PingFangSC-Semibold" size:ScaleW(fontValue)];
#define thinToSizeFont(fontValue) [UIFont fontWithName:@"PingFangSC-Thin" size:ScaleW(fontValue)];
#define mediumToSizeFont(fontValue) [UIFont fontWithName:@"PingFangSC-Medium" size:ScaleW(fontValue)];

#endif /* ZCQDeviceUIConfig_h */
