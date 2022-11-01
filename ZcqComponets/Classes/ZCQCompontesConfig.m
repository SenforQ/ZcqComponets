//
//  ZCQCompontesConfig.m
//  ZcqComponets
//
//  Created by 郑创权 on 2022/10/17.
//

#import "ZCQCompontesConfig.h"
#import "ZcqComponets.h"
#import "ZCQImageManager.h"
@implementation ZCQCompontesConfig

static ZCQCompontesConfig * _defaultManager = nil;

+(instancetype)shared{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _defaultManager = [[ZCQCompontesConfig alloc] init];
        _defaultManager.isUsedCustomNavBar = YES;
        _defaultManager.usedCutomNavBarBGColor = [UIColor whiteColor];
        _defaultManager.baseVCColor = [UIColor whiteColor];
        _defaultManager.usedCutomNavBarLeftImge = [ZCQImageManager imageWithBundleName:@"ZCQImages" imageName:@"zcq_navBackArrow"];
    });
    return _defaultManager;
}

@end
