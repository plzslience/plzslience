//
//  LHBaseViewController.h
//  生活圈项目
//
//  Created by 赖文辉 on 15/8/9.
//  Copyright (c) 2015年 赖文辉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LHBaseViewController : UIViewController


@property (nonatomic,strong) NSMutableDictionary *prar;
@property (nonatomic,strong) NSMutableArray *array;


- (void)showLoadView;
- (void)hidenLoadView;
- (void)showErroeMessage:(NSString *)message;


@end
