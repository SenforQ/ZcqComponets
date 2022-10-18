//
//  ZCQGetCurrentNavVCVender.h
//  Pods-ZcqComponets_Example
//
//  Created by 郑创权 on 2022/10/16.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface ZCQGetCurrentNavVCVender : NSObject

/** 获取顶部视图.*/
+ (UIViewController *)theTopviewControler;
/** 获取当前的VC*/
+ (UIViewController *)getCurrentVC;

@end

NS_ASSUME_NONNULL_END
