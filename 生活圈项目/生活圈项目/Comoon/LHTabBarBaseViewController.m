//
//  LHTabBarBaseViewController.m
//  生活圈项目
//
//  Created by 赖文辉 on 15/8/10.
//  Copyright (c) 2015年 赖文辉. All rights reserved.
//

#import "LHTabBarBaseViewController.h"

#define kUITabBarViewHeight 49
#define kUIPopViewHeight 44

@interface LHTabBarBaseViewController ()


@property (nonatomic,strong) UIView *tabBarView;
@property (nonatomic,strong) UIView *popView;

@end

@implementation LHTabBarBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //tabBarView
    
    self.tabBarView = [[UIView alloc] initWithFrame:CGRectMake(0, kUIScreenHeight -  kUITabBarViewHeight, kUIScreenWidth, kUITabBarViewHeight)];
    self.tabBarView.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:self.tabBarView];
    
    for (int i = 0; i < 5; i++)
    {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(i * kUIScreenWidth / 5, 0, kUIScreenWidth / 5, kUITabBarViewHeight);
        
        NSString *normal = [NSString stringWithFormat:@"home_%d",i];
        [btn setBackgroundImage:[UIImage imageNamed:normal] forState:UIControlStateNormal];
        NSString *select = [NSString stringWithFormat:@"home_%d_pressed",i];
        [btn setBackgroundImage:[UIImage imageNamed:select] forState:UIControlStateSelected];
        [btn addTarget:self action:@selector(changeVC:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = i;
        if (i==0) {
            
            btn.selected = YES;
        }
        [self.tabBarView addSubview:btn];
    }
    //创建popView
    self.popView = [[UIView alloc] initWithFrame:CGRectMake(0, kUIScreenHeight - kUITabBarViewHeight - kUIPopViewHeight, kUIScreenWidth, kUIPopViewHeight)];
    UIImageView *bg = [[UIImageView alloc] initWithFrame:self.popView.bounds];
    bg.image = [UIImage imageNamed:@"home_topbar"];
    self.popView.hidden = YES;
    
    [self.popView addSubview:bg];
    
    [self.view addSubview:self.popView];
    
    //添加按钮
    UIButton *shake = [LHFactory lhbuttonWithType:LHButtonTypeNormal title:@"摇一摇" rect:CGRectMake(0, 0, 156.0/640*kUIScreenWidth, kUIPopViewHeight) tag:5 target:self SEL:@selector(changeVC:)];
    [self.popView addSubview:shake];
    
    UIButton *xmpp = [LHFactory lhbuttonWithType:LHButtonTypeNormal title:@"联系商家" rect:CGRectMake(168.0/640*kUIScreenWidth, 0, 150/640.0 * kUIScreenWidth, kUIPopViewHeight) tag:6 target:self SEL:@selector(changeVC:)];
    [self.popView addSubview:xmpp];
    
    UIButton *online = [LHFactory lhbuttonWithType:LHButtonTypeNormal title:@"周边" rect:CGRectMake(355/640.0 * kUIScreenWidth, 0, 93 / 640.0 *kUIScreenWidth, kUIPopViewHeight) tag:7 target:self SEL:@selector(changeVC:)];
    [self.popView addSubview:online];
}
- (void)changeVC:(UIButton *)btn
{
    self.popView.hidden = YES;
    [self.tabBarView.subviews enumerateObjectsUsingBlock:^(UIButton *btn, NSUInteger idx, BOOL *stop) {
        btn.selected = NO;
    }];
    btn.selected = YES;
    

    if (btn.tag < 4)
    {
        self.selectedIndex = btn.tag;
    }
    else if (btn.tag == 4)
    {
        self.popView.hidden = NO;
    }
    else
    {
        self.selectedIndex = btn.tag - 1;
    }
}


@end
