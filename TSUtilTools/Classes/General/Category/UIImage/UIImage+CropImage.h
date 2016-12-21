//
//  UIImage+CropImage.h
//  ios-动画-UIBezierPath-1
//
//  Created by TangTieshan on 16/4/8.
//  Copyright (c) 2016年 TangTieshan. All rights reserved.
//

/**
 *
 *  UIImage剪切图片
 *
 **/

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, TTSCropImagePosition){
    kTTSCropImagePositionFromCenter = 1,
    kTTSCropImagePositionFromTopLeft,
    kTTSCropImagePositionFromTopRight,
    kTTSCropImagePositionFromBottomLeft,
    kTTSCropImagePositionFromBottomRight
};

@interface UIImage (CropImage)
/**
 *  将图片裁剪为等宽高的图片
 *
 *  @return 裁剪后的图片
 */
- (UIImage *)imageByCropToEqualWithAndHeight;

/**
 *  将图片裁剪为指定的大小
 *
 *  @param targetSize 指定裁剪后的图片的大小   size的尺寸要乘以屏幕的scale值
 *  @param position   TTSCropImagePosition 裁剪的基准点
 *
 *  @return 裁剪后的图片
 */
- (UIImage *)imageByCropToSize:(CGSize)targetSize AtPosition:(TTSCropImagePosition)position;

/**
 *  将图片按照宽高比裁剪图片
 *
 *  @param scale    宽高比例值
 *
 *  @return 裁剪后的图片
 */
- (UIImage *)imageByCropToScale:(CGFloat)scale;

@end
