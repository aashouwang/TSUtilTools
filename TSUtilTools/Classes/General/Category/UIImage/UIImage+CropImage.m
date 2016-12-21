//
//  UIImage+CropImage.m
//  ios-动画-UIBezierPath-1
//
//  Created by TangTieshan on 16/4/8.
//  Copyright (c) 2016年 TangTieshan. All rights reserved.
//



#import "UIImage+CropImage.h"

@implementation UIImage (CropImage)
- (UIImage *)imageByCropToEqualWithAndHeight
{
    CGSize imageSize = self.size;
    CGFloat screenScale = [[UIScreen mainScreen] scale];
    
    CGFloat imageWidth = imageSize.width * screenScale;
    CGFloat imageHeight = imageSize.height * screenScale;
    
    CGFloat widthAndHeight = fminf(imageWidth, imageHeight);
    
    CGFloat pointX = (imageWidth - widthAndHeight) * 0.5f;
    CGFloat pointY = (imageHeight - widthAndHeight) * 0.5f;
    
    return [self cropImageAtRect:CGRectMake(pointX, pointY, widthAndHeight, widthAndHeight)];
    
}

- (UIImage *)imageByCropToSize:(CGSize)targetSize AtPosition:(TTSCropImagePosition)position
{
    CGRect rect = CGRectZero;
    CGSize imageSize = self.size;
    
    CGFloat screenScale = [[UIScreen mainScreen] scale];
    
    CGFloat imageWidth = imageSize.width * screenScale;
    CGFloat imageHeight = imageSize.height * screenScale;
    
    CGFloat pointX = 0;
    CGFloat pointY = 0;
    
    targetSize.width = targetSize.width * screenScale;
    targetSize.height = targetSize.height * screenScale;
    
    switch (position) {
        case kTTSCropImagePositionFromCenter: {
            
            pointX = imageWidth * 0.5f - targetSize.width * 0.5f;
            pointY = imageHeight * 0.5f - targetSize.height * 0.5f;
            
            break;
        }
        case kTTSCropImagePositionFromTopLeft: {
            break;
        }
        case kTTSCropImagePositionFromTopRight: {
            pointX = imageWidth - targetSize.width;
            break;
        }
        case kTTSCropImagePositionFromBottomLeft: {
            pointY = imageHeight - targetSize.height;
            break;
        }
        case kTTSCropImagePositionFromBottomRight: {
            pointX = imageWidth - targetSize.width;
            pointY = imageHeight - targetSize.height;
            break;
        }
    }
    
    rect = CGRectMake(pointX, pointY, targetSize.width, targetSize.height);
    
    return [self cropImageAtRect:rect];
}

- (UIImage *)imageByCropToScale:(CGFloat)scale
{
    CGSize imageSize = self.size;
    
    CGFloat imageScale = imageSize.width / imageSize.height;
    
    CGSize cropSize = imageSize;
    
    if (scale > imageScale) {
        cropSize.width = imageSize.width;
        cropSize.height = imageSize.width / scale;
    }
    else
    {
        cropSize.height = imageSize.height;
        cropSize.width = imageSize.height * scale;
    }
    
    return [self imageByCropToSize:cropSize AtPosition:kTTSCropImagePositionFromCenter];
}

- (UIImage *)cropImageAtRect:(CGRect)rect
{
    CGImageRef imageRef = self.CGImage;
    
    CGImageRef imagePartRef = CGImageCreateWithImageInRect(imageRef, rect);
    
    UIImage * cropImage = [UIImage imageWithCGImage:imagePartRef scale:[[UIScreen mainScreen] scale] orientation:UIImageOrientationUp];
    
    CGImageRelease(imagePartRef);
    
    return cropImage;
}
@end
