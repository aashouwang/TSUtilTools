//
//  TTScaleButton.m
//
//  Created by TangTieshan on 16/7/15.
//  Copyright © 2016年 TangTieshan. All rights reserved.
//

#import "TTScaleButton.h"

static const CGFloat kAnimationDuration = 0.15;     //默认缩放动画的执行时间
static const CGFloat kButtonDefaultScale = 0.9f;    //默认按钮的缩小比例

@implementation TTScaleButton

- (instancetype)init
{
    if (self = [super init]) {
        [self __TTSAddScale__];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self __TTSAddScale__];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self __TTSAddScale__];
    }
    return self;
}

#pragma mark -
#pragma mark - Private Action
- (void)__TTSAddScale__
{
    _isOpenScale = YES;
    //添加点击事件
    [self addTarget:self action:@selector(__TTSTouchDown__) forControlEvents:UIControlEventTouchDown];
    [self addTarget:self action:@selector(__TTSTouchCancelOrTouchUp__) forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchUpOutside | UIControlEventTouchCancel];
}

#pragma mark -
#pragma mark - Target Action
- (void)__TTSTouchDown__
{
    if (!_isOpenScale) {
        return;
    }
    
    UIImage * highlightedImage = [self imageForState:UIControlStateHighlighted];
    if (!highlightedImage) {
        self.adjustsImageWhenHighlighted = NO;
    }
    
    //缩放比例必须大于0，且小于等于1
    CGFloat scale = (_buttonScale && _buttonScale <=1.0) ? _buttonScale : kButtonDefaultScale;
    
    [UIView animateWithDuration:kAnimationDuration animations:^{
        
        self.transform = CGAffineTransformMakeScale(scale, scale);
        
    }];
}

- (void)__TTSTouchCancelOrTouchUp__
{
    if (!_isOpenScale) {
        return;
    }
    
    [UIView animateWithDuration:kAnimationDuration animations:^{
        
        self.transform = CGAffineTransformMakeScale(1.0, 1.0);
        
    }];
}

@end
