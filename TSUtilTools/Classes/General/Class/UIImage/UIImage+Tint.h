//
//  UIImage+Tint.h
//  使用blend改变图片的颜色
//
//  Created by TangTieshan on 14-5-19.
//  Copyright (c) 2014年 TangTieshan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Tint)
- (UIImage *)imageWithTintColor:(UIColor *)tintColor;
- (UIImage *)imageWithGradientTintColor:(UIColor *)tintcolor;
@end
