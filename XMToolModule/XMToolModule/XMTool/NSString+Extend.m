//
//  NSString+Extend.m
//  Gymax
//
//  Created by 薛坤龙 on 15/6/2.
//  Copyright (c) 2015年 com.xiangmei123. All rights reserved.
//

#import "NSString+Extend.h"

@implementation NSString (Extend)

// 判断字符串是否为空
+ (BOOL)isEmpty:(NSString *)aString
{
    if (aString == nil || (NSNull *)aString == [NSNull null])
    {
        return YES;
    }
    if (aString.length == 0)
    {
        return YES;
    }
    return NO;
}

//计算高度
+ (CGFloat)getTheStringHeight:(NSString *)string setFont:(CGFloat)font withWidth:(CGFloat)width {
    
    
    NSMutableAttributedString  *attrStr = [[NSMutableAttributedString alloc] initWithString:string];
    NSRange range = NSMakeRange(0, attrStr.length);
    //设置字体
    [attrStr addAttribute:NSFontAttributeName
                    value:[UIFont systemFontOfSize:font]
                    range:range];
    
    NSDictionary *dic = [attrStr attributesAtIndex:0 effectiveRange:&range];   // 获取该段attributedString
    
    CGSize textSize = [string boundingRectWithSize:CGSizeMake(width, MAXFLOAT) // 用于计算文本绘制时占据的矩形块</span>
                                           options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading // 文本绘制时的附加选项
                                        attributes:dic        // 文字的属性
                                           context:nil].size; // context上下文。包括一些信息，例如如何调整字间距以及缩放。该对象包含的信息将用于文本绘制。该参数可为nil
    
    return textSize.height;
}

//计算宽度
+ (CGFloat)getTheStringWidth:(NSString *)string setFont:(CGFloat)font withHeight:(CGFloat)height {
    
    NSMutableAttributedString  *attrStr = [[NSMutableAttributedString alloc] initWithString:string];
    NSRange range = NSMakeRange(0, attrStr.length);
    //设置字体
    [attrStr addAttribute:NSFontAttributeName
                    value:[UIFont systemFontOfSize:font]
                    range:range];
    
    NSDictionary *dic = [attrStr attributesAtIndex:0 effectiveRange:&range];   // 获取该段attributedString
    
    CGSize textSize = [string boundingRectWithSize:CGSizeMake(MAXFLOAT, height) // 用于计算文本绘制时占据的矩形块
                                           options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading // 文本绘制时的附加选项
                                        attributes:dic        // 文字的属性
                                           context:nil].size; // context上下文。包括一些信息，例如如何调整字间距以及缩放。该对象包含的信息将用于文本绘制。该参数可为nil
    
    return textSize.width;
    
}

@end
