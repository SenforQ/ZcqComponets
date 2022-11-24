//
//  ZCQBaseViewController.h
//  ZcqComponets
//
//  Created by 郑创权 on 2022/10/17.
//

#import <UIKit/UIKit.h>
#import "ZCQNavBar.h"
NS_ASSUME_NONNULL_BEGIN

@interface ZCQBaseViewController : UIViewController

@property (nonatomic, strong)UIButton* navDefaultRightBtn;

@property (nonatomic, assign)BOOL isSetUpNavRightBtn;
@property (nonatomic, assign)BOOL isBanSlideBack;//是否运行当前页面侧滑. 默认可以.

-(void)isWindowHavaBGColor:(BOOL)isHaveBGColor;

@property (nonatomic, strong) ZCQNavBar *navBarView;
@property (nonatomic, assign) BOOL hiddenNavigationView;
@property (nonatomic, strong) UIColor *nav_color;


@end

NS_ASSUME_NONNULL_END
