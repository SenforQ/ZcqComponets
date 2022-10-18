//
//  ZCQNavigationController.m
//  ZcqComponets
//
//  Created by 郑创权 on 2022/10/17.
//

#import "ZCQNavigationController.h"
#import "ZCQNavConfig.h"
@interface ZCQNavigationController ()<UIGestureRecognizerDelegate>

@property (nonatomic, strong) UIButton* leftNavBackBtn;

@end

@implementation ZCQNavigationController


+ (void)initialize{
//    [self preferredStatusBarStyle];
    //设置UINavigation;
    UINavigationBar* navBar = [UINavigationBar appearance];
    //渲染文字为黑色
    navBar.tintColor = [UIColor blackColor];
    //是否需要半透明效果
    navBar.translucent = NO;
    //设置阴影图片
    navBar.shadowImage = [UIImage new];
    //导航栏照片
//    [navBar setBackgroundImage:[self setNavBackGroundColor:NavBGColor size:CGSizeMake([UIScreen mainScreen].bounds.size.width, NVHeight)] forBarMetrics:UIBarMetricsDefault];
    [navBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    
    //设置导航栏字体
    NSMutableDictionary* barDic = [NSMutableDictionary dictionary];
    barDic[NSFontAttributeName] = [UIFont boldSystemFontOfSize:17];
    barDic[NSForegroundColorAttributeName] = NavTitleColor;
    [navBar setTitleTextAttributes:barDic];
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    if (@available(iOS 13.0, *)) {
        return UIStatusBarStyleDarkContent;
    } else {
        // Fallback on earlier versions
        return UIStatusBarStyleDefault;
    }
    // UIStatusBarStyleLightContent 状态栏字体白色 UIStatusBarStyleDefault黑色
}


//點擊空白處，放棄編輯
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
     [self.view endEditing:YES];
}

- (void)viewDidLoad{
    [super viewDidLoad];
    //增加导航栏後退手勢代理
    self.interactivePopGestureRecognizer.delegate = self;
}

+ (UIImage *)setNavBackGroundColor:(UIColor *)color size:(CGSize)size {
    
    UIGraphicsBeginImageContextWithOptions(size, NO, .0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [color set];
    CGContextFillRect(context, CGRectMake(.0, .0, size.width, size.height-1));
    
    [NAVBGLineColor set];
    CGContextFillRect(context, CGRectMake(.0, size.height-1, size.width, 1));
    //从图形上下文获取图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //关闭图形上下文
    UIGraphicsEndImageContext();


    return image;
}

#pragma mark - <UIGestureRecognizerDelegate>
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    return self.childViewControllers.count > 1;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.childViewControllers.count >= 1) {
        UIButton* leftNavBackBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        leftNavBackBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        leftNavBackBtn.frame = CGRectMake(0, 0, 44, 44);
        [leftNavBackBtn setImage:[UIImage imageNamed:@"navBackArrow"] forState:UIControlStateNormal];
        [leftNavBackBtn addTarget:self action:@selector(navRightAction) forControlEvents:UIControlEventTouchUpInside];
        _leftNavBackBtn = leftNavBackBtn;
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftNavBackBtn];
        viewController.hidesBottomBarWhenPushed = YES;
    }

    
    [super pushViewController:viewController animated:animated];
}

//導航欄左按鈕點擊事件
- (void)navRightAction{
    [self popViewControllerAnimated:YES];
}


@end
