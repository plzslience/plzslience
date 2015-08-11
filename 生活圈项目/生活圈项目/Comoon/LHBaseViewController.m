//
//  LHBaseViewController.m
//  生活圈项目
//
//  Created by 赖文辉 on 15/8/9.
//  Copyright (c) 2015年 赖文辉. All rights reserved.
//

#import "LHBaseViewController.h"
#import "MBProgressHUD.h"
#import "UIView+Toast.h"

@interface LHBaseViewController ()

@end

@implementation LHBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255) / 255.0 green:arc4random_uniform(255) / 255.0 blue:arc4random_uniform(255) / 255.0 alpha:1.0];
}


- (void)showLoadView
{
    
}
- (void)hidenLoadView
{
    
}
- (void)showErroeMessage:(NSString *)message;
{
    [self.view makeToast:message];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
