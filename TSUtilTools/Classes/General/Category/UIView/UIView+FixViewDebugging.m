//
//  UIView+FixViewDebugging.m
//  VideoPlayer-Demo
//
//  Created by TangTieshan on 16/10/29.
//  Copyright © 2016年 TangTieshan. All rights reserved.
//

#import "UIView+FixViewDebugging.h"
#import <objc/runtime.h>

@implementation UIView (FixViewDebugging)

+ (void)load
{
    Method original = class_getInstanceMethod(self, @selector(viewForBaselineLayout));
    class_addMethod(self, @selector(viewForFirstBaselineLayout), method_getImplementation(original), method_getTypeEncoding(original));
    class_addMethod(self, @selector(viewForLastBaselineLayout), method_getImplementation(original), method_getTypeEncoding(original));
}

@end
