//
//  NSData+CompressImage.m
//  ios-动画-UIBezierPath-1
//
//  Created by TangTieshan on 16/4/11.
//  Copyright (c) 2016年 TangTieshan. All rights reserved.
//

#import "NSData+CompressImage.h"

@implementation NSData (CompressImage)
//img 需要压缩的对象 限制最高数据量KB step每循环一次步进值
+ (NSData *)adjustImageSize:(UIImage *)img limitSize:(NSInteger)size step:(float)delta
{
    
    NSUInteger dataSize = size * 1000;
    
    NSData *ImageData = UIImageJPEGRepresentation(img, 1.0);
    
    float step = 1.0;
    
    if (ImageData.length > dataSize) {
        
        while (ImageData.length > dataSize && step > 0) {
            
            ImageData = UIImageJPEGRepresentation(img, step -= delta);
            
        }

    }
    return ImageData;
}
@end
