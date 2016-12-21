//
//  UIImage+ColorToImage.h
//  UIKitExample
//
//  Created by TangTieshan on 15/9/23.
//  Copyright (c) 2015年 TangTieshan. All rights reserved.
//

/**
 *
 *  将纯色UIColor转化为UIImage
 *
 **/

#import <UIKit/UIKit.h>

@interface UIImage (ColorToImage)
+ (UIImage*)createImageWithColor:(UIColor *)color;
@end
