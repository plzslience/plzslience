//
//  LHHomeViewController.m
//  生活圈项目
//
//  Created by 赖文辉 on 15/8/9.
//  Copyright (c) 2015年 赖文辉. All rights reserved.
//

#import "LHHomeViewController.h"
#import "LHShopViewController.h"
#import "LHTabBarBaseViewController.h"

@interface LHHomeViewController ()

@end

@implementation LHHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleLabel.text = @"首页";
}
- (IBAction)pushMethord:(id)sender {
    
    LHShopViewController *shop = [[LHShopViewController alloc] init];
    
    [self.navigationController pushViewController:shop animated:YES];
    
    LHTabBarBaseViewController *tab =  (LHTabBarBaseViewController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    
    [tab tabBarHidden:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
