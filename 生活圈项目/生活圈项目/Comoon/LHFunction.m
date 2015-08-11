//
//  LHFunction.m
//  生活圈项目
//
//  Created by 赖文辉 on 15/8/11.
//  Copyright (c) 2015年 赖文辉. All rights reserved.
//

#import "LHFunction.h"
#import "MD5.h"

@implementation LHFunction

//时间戳
+ (NSString *)getTimeScamp
{
    return [NSString stringWithFormat:@"%f",[[NSDate date] timeIntervalSince1970]];
}

//MD5
+ (NSString *)md5StringFromArray:(NSArray *)array
{
    NSMutableString *restr = [NSMutableString string];
    
    [array enumerateObjectsUsingBlock:^(NSString *str, NSUInteger idx, BOOL *stop)
    {
        [restr appendString:str];
    }];
    
    return [MD5 MD5Encrypt:restr];
}

@end
