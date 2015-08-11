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

/*******************枚举********************************/

typedef enum {
    LHButtonTypeNormal = 0,
    LHButtonTypeCorner
}LHButtonType;
#endif
