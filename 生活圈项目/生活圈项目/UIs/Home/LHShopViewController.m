//
//  LHShopViewController.m
//  生活圈项目
//
//  Created by 赖文辉 on 15/8/11.
//  Copyright (c) 2015年 赖文辉. All rights reserved.
//

#import "LHShopViewController.h"
#import "LHTabBarBaseViewController.h"

@interface LHShopViewController ()

@end

@implementation LHShopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)backMethod
{
    [self.navigationController popViewControllerAnimated:YES];
    
    LHTabBarBaseViewController *tab =  (LHTabBarBaseViewController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    
    [tab tabBarHidden:NO];
    
}

@end
