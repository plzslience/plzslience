//
//  LHHomeModel.h
//  生活圈项目
//
//  Created by 赖文辉 on 15/8/12.
//  Copyright (c) 2015年 赖文辉. All rights reserved.
//

#import "JSONModel.h"

@class LHFirstListModel;
@protocol LHFocus;

@interface LHHomeModel : JSONModel

@property (nonatomic,strong) LHFirstListModel *focus;

@end


@interface LHFirstListModel : JSONModel

@property (nonatomic,strong) NSArray<LHFocus> *list;

@end

@interface LHFocus : JSONModel

/**
 * 焦点图id
 */
@property(nonatomic,assign)int id;
/**
 *  焦点图标题
 */
@property(nonatomic,copy)NSString *title;
/**
 *  图片链接
 */
@property(nonatomic,copy)NSString *cover;
/**
 *  所要跳转的基础连接
 */
@property(nonatomic,copy)NSString *link;
/**
 *  跳转到指定的模块
 */
@property(nonatomic,copy)NSString *res_name;
/**
 *  指定模块下的详情ID
 */
@property(nonatomic,copy)NSString *res_id;

@end