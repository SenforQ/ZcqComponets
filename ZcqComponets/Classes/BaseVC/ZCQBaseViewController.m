//
//  ZCQBaseViewController.m
//  ZcqComponets
//
//  Created by 郑创权 on 2022/10/17.
//

#import "ZCQBaseViewController.h"
#import "ZCQDeviceUIConfig.h"
#import "ZCQNavConfig.h"
#import "ZCQCompontesConfig.h"
//手势
#import "UINavigationController+FDFullscreenPopGesture.h"
@interface ZCQBaseViewController ()<ZCQNavBarDelegate>

@end

@implementation ZCQBaseViewController


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}


-(void)isWindowHavaBGColor:(BOOL)isHaveBGColor{
//    UIWindow* window =  [[UIApplication sharedApplication].delegate window];
    UIView* view = [self.view viewWithTag:100001];
    if (isHaveBGColor) {
        view.hidden = NO;
    }else{
        view.hidden = YES;
    }
    [self.view bringSubviewToFront:_navBarView];
    _navBarView.backgroundColor = RGBHexAlpha(0xFFFFFF, 0);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [ZCQCompontesConfig shared].baseVCColor;
//    UIView *view = [[UIView alloc] init];
//    view.frame = CGRectMake(0,0,MainScreenWidth,381);
//    view.tag = 100001;
//    view.hidden = YES;
//    // gradient
//    CAGradientLayer *gl = [CAGradientLayer layer];
//    gl.frame = CGRectMake(0,0,MainScreenWidth,381);
//    gl.startPoint = CGPointMake(0.5, 0);
//    gl.endPoint = CGPointMake(0.5, 1);
//    gl.colors = @[(__bridge id)RGBHexAlpha(0xFFD39E, 0.13).CGColor, (__bridge id)RGBHexAlpha(0xD8D8D8, 0).CGColor];
//    gl.locations = @[@(0), @(1.0f)];
//    [view.layer addSublayer:gl];
//    [self.view addSubview:view];
    [self isUsedCustomNavBar:[ZCQCompontesConfig shared].isUsedCustomNavBar];
    self.navBarView.title = self.title;
    
    if(self.isBanSlideBack){
        [self configNoSlideBack];
    }
}

- (void)configNoSlideBack{
    //禁止侧滑
    id traget = self.navigationController.interactivePopGestureRecognizer.delegate;
    UIPanGestureRecognizer* pan = [[UIPanGestureRecognizer alloc]initWithTarget:traget action:nil];
    [self.view addGestureRecognizer:pan];
}


-(void)isUsedCustomNavBar:(BOOL)isCustomNavBar{
    if (isCustomNavBar) {
        //隐藏系统导航栏。
        self.fd_prefersNavigationBarHidden = YES;
        self.navBarView = [[ZCQNavBar alloc] initWithFrame:CGRectMake(0, 0, MainScreenWidth, NBHeight)];
        _navBarView.delegate = self;
        _navBarView.backgroundColor = [ZCQCompontesConfig shared].usedCutomNavBarBGColor;
        [self.view addSubview:self.navBarView];
        //显示自己的导航栏
        self.navBarView.hidden = NO;
    }else{
        //显示系统导航栏。
        self.fd_prefersNavigationBarHidden = NO;
//        self.navBarView = [[ZCQNavBar alloc] init];
//        self.navBarView.frame = CGRectMake(0, 0, MainScreenWidth, NBHeight);
//        _navBarView.delegate = self;
//        _navBarView.backgroundColor = RGBHex(0xFFFFFF);
//        [self.view addSubview:self.navBarView];
//        //显示自己的导航栏
//        self.navBarView.hidden = YES;
    }
}

-(void)setIsSetUpNavRightBtn:(BOOL)isSetUpNavRightBtn{
    _isSetUpNavRightBtn = isSetUpNavRightBtn;
    //如果设置了使用自定义的custom则无法设置系统的NavRight
    if (_isSetUpNavRightBtn && ![ZCQCompontesConfig shared].usedCutomNavBarBGColor) {
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.navDefaultRightBtn];
    }
}

-(UIButton *)navDefaultRightBtn{
    if (!_navDefaultRightBtn) {
        _navDefaultRightBtn = [[UIButton alloc]initWithFrame:CGRectMake(ScaleW(15), STATUSBAR_HEIGHT , ScaleW(50), ScaleW(44))];
        _navDefaultRightBtn.titleLabel.font = [UIFont boldSystemFontOfSize:ScaleW(16)];
        _navDefaultRightBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        [_navDefaultRightBtn setTitleColor:RGBHex(0x000000) forState:UIControlStateNormal];
//        [_navRightBtn addTarget:self action:@selector(navRightClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _navDefaultRightBtn;
}

//customNavBar


#pragma mark - UINavigationControllerDelegate
// 将要显示控制器
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    // 判断要显示的控制器是否是自己
    BOOL isShowHomePage = [viewController isKindOfClass:[self class]];
    [self.navigationController setNavigationBarHidden:isShowHomePage animated:YES];
}

- (void)dealloc {
    self.navigationController.delegate = nil;
}


#pragma mark - ZCQNavBarDelegate
-(void)topLeftClick{
//    if (self.childViewControllers.count > 1) {
//        NSLog(@"topLeftClick");
        [self.navigationController popViewControllerAnimated:YES];
//    }
}

-(void)topRightClick{
    
}

@end
