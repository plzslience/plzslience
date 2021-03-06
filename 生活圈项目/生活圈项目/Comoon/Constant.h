//
//  Constant.h
//  生活圈项目
//
//  Created by 赖文辉 on 15/8/9.
//  Copyright (c) 2015年 赖文辉. All rights reserved.
//

#ifndef ______Constant_h
#define ______Constant_h


#ifdef DEBUG

#define DSLog(...) NSLog(__VA_ARGS__)

#else

#define DSLog(...)

#endif


#define kUIScreenWidth [UIScreen mainScreen].bounds.size.width
#define kUIScreenHeight [UIScreen mainScreen].bounds.size.height

#define kUITabBarViewHeight 49
#define kUIPopViewHeight 44

/*******************枚举********************************/

typedef enum {
    LHButtonTypeNormal = 0,
    LHButtonTypeCorner
}LHButtonType;

/*******************************************************/
#define APP_ID  @"1001"
#define APP_IDENGER @"5bV9JhaMn2GJ5MZe"

#define kBaseURL @"http://www.qd-life.com/"
#define kURLGETHomeInfo @"?anu=api/1/index/get_index_info"

#endif
