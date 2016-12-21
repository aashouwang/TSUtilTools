//
//  AnimationObject.m
//  UIKitExample
//
//  Created by TangTieshan on 15/9/1.
//  Copyright (c) 2015年 TangTieshan. All rights reserved.
//

#import "AnimationObject.h"

@implementation AnimationObject
+ (void)shakeUIWithView:(UIView *)shakedView
{
    CALayer * shakeLayer         = [shakedView layer];
    CGPoint posLbl               = [shakeLayer position];
    CGPoint y                    = CGPointMake(posLbl.x-10, posLbl.y);
    CGPoint x                    = CGPointMake(posLbl.x+10, posLbl.y);
    CABasicAnimation * animation = [CABasicAnimation animationWithKeyPath:@"position"];
    
    [animation setTimingFunction:[CAMediaTimingFunction
                                  functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [animation setFromValue:[NSValue valueWithCGPoint:x]];
    [animation setToValue:[NSValue valueWithCGPoint:y]];
    [animation setAutoreverses:YES];
    [animation setDuration:0.05];
    [animation setRepeatCount:3];
    
    [shakeLayer addAnimation:animation forKey:nil];
}
@end
