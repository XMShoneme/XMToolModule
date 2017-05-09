//
//  NSString+Extend.h
//  Gymax
//
//  Created by 薛坤龙 on 15/6/2.
//  Copyright (c) 2015年 com.xiangmei123. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Extend)

// 判断字符串是否为空
+ (BOOL)isEmpty:(NSString *)aString;

//计算高度
+ (CGFloat)getTheStringHeight:(NSString *)string setFont:(CGFloat)font withWidth:(CGFloat)width;

//计算宽度
+ (CGFloat)getTheStringWidth:(NSString *)string setFont:(CGFloat)font withHeight:(CGFloat)height;


@end
