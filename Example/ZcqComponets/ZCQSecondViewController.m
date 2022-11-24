//
//  ZCQSecondViewController.m
//  ZcqComponets_Example
//
//  Created by 郑创权 on 2022/10/17.
//  Copyright © 2022 Z cq. All rights reserved.
//

#import "ZCQSecondViewController.h"
@interface ZCQSecondViewController ()

@end

@implementation ZCQSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
//    [self configNoSlideBack];
    UIButton* senderBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 200, 44)];
    [senderBtn setTitle:@"发送" forState:UIControlStateNormal];
    senderBtn.backgroundColor = [UIColor blueColor];
    [senderBtn addTarget:self action:@selector(senderBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:senderBtn];
//    if (senderBtn) {
//
//    }
}
-(void)senderBtnClick:(UIButton*)sender{
    ZCQSecondViewController* vc = [[ZCQSecondViewController alloc]init];
    vc.title = @"NoSlideBack";
    [self.navigationController pushViewController:vc animated:YES];
}

@end
