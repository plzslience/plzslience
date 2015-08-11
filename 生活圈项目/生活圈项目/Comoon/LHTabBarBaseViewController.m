//
//  LHTabBarBaseViewController.m
//  生活圈项目
//
//  Created by 赖文辉 on 15/8/10.
//  Copyright (c) 2015年 赖文辉. All rights reserved.
//

#import "LHTabBarBaseViewController.h"
#import "LHClickItemProtocol.h"
#import "LHTabBarView.h"
#import "LHPopView.h"




@interface LHTabBarBaseViewController () <LHClickItemProtocol>


@property (nonatomic,strong) LHTabBarView *tabBarView;
@property (nonatomic,strong) LHPopView *popView;

@end

@implementation LHTabBarBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //tabBarView
    
    self.tabBarView = [[LHTabBarView alloc] initWithFrame:CGRectMake(0, kUIScreenHeight -  kUITabBarViewHeight, kUIScreenWidth, kUITabBarViewHeight)];
    self.tabBarView.delegate = self;
    self.tabBarView.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:self.tabBarView];
    
    
    
        //创建popView
    self.popView = [[LHPopView alloc] initWithFrame:CGRectMake(0, kUIScreenHeight - kUITabBarViewHeight - kUIPopViewHeight, kUIScreenWidth, kUIPopViewHeight)];
    self.popView.delegate = self;
    
    [self.view addSubview:self.popView];
    
     
}


- (void)didClickItemIndex:(NSInteger)index
{
    self.popView.hidden = YES;
    
    if (index < 4)
    {
        self.selectedIndex = index;
    }
    else if (index == 4)
    {
        self.popView.hidden = NO;
    }
    else
    {
        self.selectedIndex = index - 1;
    }
}
- (void)changeVC:(UIButton *)btn
{
 
}


@end
