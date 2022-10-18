//
//  ZCQNavConfig.h
//  ZcqComponets
//
//  Created by 郑创权 on 2022/10/17.
//

#ifndef ZCQNavConfig_h
#define ZCQNavConfig_h

/*导航栏*/
#define NVHeight 44
#define NBHeight NVHeight+STATUSBAR_HEIGHT

/*状态栏*/
#define STATUSBAR_HEIGHT \
^(){\
if (@available(iOS 13.0, *)) {\
    UIStatusBarManager *statusBarManager = [UIApplication sharedApplication].windows.firstObject.windowScene.statusBarManager;\
    return statusBarManager.statusBarFrame.size.height;\
} else {\
    return [UIApplication sharedApplication].statusBarFrame.size.height;\
}\
}()

/*是否为刘海*/
#define isIphoneX ({\
BOOL isPhoneX = NO;\
if (@available(iOS 11.0, *)) {\
    isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0;\
}\
isPhoneX;\
})

//导航栏标题颜色.
#define NavTitleColor [UIColor blackColor]
//导航栏是否为半透明
#define NavIsTranslucent NO
//导航栏分割线颜色
#define NAVBGLineColor [UIColor blackColor]
//导航栏的背景颜色
#define NavBGColor [UIColor whiteColor]

#endif /* ZCQNavConfig_h */
