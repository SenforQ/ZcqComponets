//
//  ZCQCompontesConfig.h
//  ZcqComponets
//
//  Created by 郑创权 on 2022/10/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZCQCompontesConfig : NSObject

+(instancetype)shared;

//ZCQBaseViewController的背景颜色，默认为0xFFFFFF（白色）
@property (nonatomic, copy)UIColor* baseVCColor;
//使用自定义的NavBar，将系统的隐藏起来.默认使用为YES
@property (nonatomic, assign)BOOL isUsedCustomNavBar;
//使用自定义的NavBar，默认为0xFFFFFF（白色）.
@property (nonatomic, copy)UIColor* usedCutomNavBarBGColor;
//使用自定义的NavBar，默认为zcq_navBackArrow
@property (nonatomic, copy)UIImage* usedCutomNavBarLeftImge;

@end

NS_ASSUME_NONNULL_END
