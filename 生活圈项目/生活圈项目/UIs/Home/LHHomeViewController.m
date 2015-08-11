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
#import "MD5.h"
#import "AFNetworking.h"
#import "LHFunction.h"
#import "LHHTTPClient.h"
#import "LHHomeModel.h"

@interface LHHomeViewController ()

@end

@implementation LHHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleLabel.text = @"首页";
    
    
  
    //参数
    NSMutableDictionary *prarm = [NSMutableDictionary dictionary];
    [prarm setObject:@"120.38" forKey:@"lon"];
    [prarm setObject:@"36.06" forKey:@"lat"];
    
    [prarm setObject:[LHFunction getTimeScamp] forKey:@"time"];
    
    
    NSArray *arr = @[APP_ID,prarm[@"lon"],prarm[@"lat"],prarm[@"time"],APP_IDENGER];
    [prarm setObject:[LHFunction md5StringFromArray:arr] forKey:@"sign"];
    
    [prarm setObject:APP_ID forKey:@"app_id"];
    
    [LHHTTPClient LHGET:kURLGETHomeInfo parameters:prarm successBlcok:^(id data) {
        NSLog(@"%@",data);
        
        
        LHHomeModel *home = [[LHHomeModel alloc] initWithDictionary:data error:nil];
        
        NSLog(@"%@",home);
        
        
    } failureBlcok:^(NSError *error) {
        NSLog(@"%@",error);
        
        
    } errorBlcok:^(id error) {
        NSLog(@"%@",error);
        
        
    }];
    
    
    
}

//推送方法
- (IBAction)pushMethord:(id)sender {
    
    LHShopViewController *shop = [[LHShopViewController alloc] init];
    
    [self.navigationController pushViewController:shop animated:YES];
    
    LHTabBarBaseViewController *tab =  (LHTabBarBaseViewController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    
    [tab tabBarHidden:YES];
    
}





@end
