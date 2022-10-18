//
//  ZCQNavBar.m
//  ZcqComponets
//
//  Created by 郑创权 on 2022/10/17.
//

#import "ZCQNavBar.h"
#import "ZCQCompontesConfig.h"
@implementation ZCQNavBar


- (instancetype) init {
    return [self initWithFrame:CGRectZero];
}

- (instancetype) initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
//        NSLog(@"ZCQNavBar.frame.height : %f",self.frame.size.height);
        self.backgroundColor = [ZCQCompontesConfig shared].usedCutomNavBarBGColor;
        [self addSubview:self.navLeftButton];
        [self addSubview:self.navRightButton];
        [self addSubview:self.titleLab];
    }
    return self;
}

-(UILabel *)titleLab{
    if (!_titleLab) {
        _titleLab = [[UILabel alloc] initWithFrame:CGRectMake((self.frame.size.width - 100)/2.0, self.frame.size.height - 44, 100, 44)];
        _titleLab.font = [UIFont fontWithName:@"PingFangSC-Medium" size:16];
        _titleLab.textColor = UIColor.blackColor;
        _titleLab.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLab;
}

-(UIButton *)navLeftButton{
    if (!_navLeftButton) {
        UIImage* leftBtnImg = [ZCQCompontesConfig shared].usedCutomNavBarLeftImge;
        _navLeftButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _navLeftButton.frame = CGRectMake(20, self.frame.size.height - 44, 44, 44);
        [_navLeftButton setImage:leftBtnImg forState:UIControlStateNormal];
        [_navLeftButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        [_navLeftButton setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
        [_navLeftButton addTarget:self action:@selector(navRightClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _navLeftButton;
}

-(UIButton *)navRightButton{
    if (!_navRightButton) {
        _navRightButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _navRightButton.frame = CGRectMake(self.frame.size.width - 20 - 44, self.frame.size.height - 44, 44, 44);
        _navRightButton.titleLabel.font = [UIFont systemFontOfSize:16];
        [_navRightButton addTarget:self action:@selector(navRightClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _navRightButton;
}


- (void)backClick {
    if (self.delegate) {
        [self.delegate topLeftClick];
    }
}

- (void)navRightClick {
    if (self.delegate) {
        [self.delegate topRightClick];
    }
}

- (void)setLeftTitle:(NSString *)leftTitle {
    _leftTitle = leftTitle;
    [self.navLeftButton setTitle:leftTitle forState:UIControlStateNormal];
}

- (void)setRightTitle:(NSString *)rightTitle{
    _rightTitle = rightTitle;
    [self.navRightButton setTitle:rightTitle forState:UIControlStateNormal];
}

- (void) setTitle:(NSString *)title {
    _title = title;
    self.titleLab.text = title;
}

@end
