//
//  ZCQDemoViewController.m
//  ZcqComponets_Example
//
//  Created by 郑创权 on 2022/10/17.
//  Copyright © 2022 Z cq. All rights reserved.
//

#import "ZCQDemoViewController.h"
#import "ZCQSecondViewController.h"
@interface ZCQDemoViewController ()

@end

@implementation ZCQDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    ZCQSecondViewController* vc = [[ZCQSecondViewController alloc]init];
    vc.title = @"second";
    [self.navigationController pushViewController:vc animated:YES];
}
@end
