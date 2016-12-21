//
//  NSData+CompressImage.h
//  ios-动画-UIBezierPath-1
//
//  Created by TangTieshan on 16/4/11.
//  Copyright (c) 2016年 TangTieshan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 *  将图片压缩到指定的尺寸（kb）
 */

@interface NSData (CompressImage)
/**
 *  将图片压缩到小于指定的尺寸（kb）
 *
 *  @param img   需要压缩的图片
 *  @param size  指定的尺寸
 *  @param delta 每次循环的值
 *
 *  @return 压缩后的data
 */
+ (NSData *)adjustImageSize:(UIImage *)img limitSize:(NSInteger)size step:(float)delta;
@end
