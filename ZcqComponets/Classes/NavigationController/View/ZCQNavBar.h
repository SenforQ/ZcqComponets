//
//  ZCQNavBar.h
//  ZcqComponets
//
//  Created by 郑创权 on 2022/10/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ZCQNavBarDelegate <NSObject>

-(void)topLeftClick;
-(void)topRightClick;

@end

@interface ZCQNavBar : UIView

@property (nonatomic, weak) id<ZCQNavBarDelegate> delegate;
@property (nonatomic, strong) UIButton *navLeftButton;
@property (nonatomic, strong) UIButton *navRightButton;
@property (nonatomic, strong) UILabel *titleLab;
@property (nonatomic, copy) NSString  *leftTitle;
@property (nonatomic, copy) NSString  *rightTitle;
@property (nonatomic, copy) NSString * title;

@end

NS_ASSUME_NONNULL_END
