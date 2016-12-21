//
//  PFEnAutoLabel.m
//  AEEfunPlatForm
//
//  Created by TangTieshan on 15-4-3.
//  Copyright (c) 2015年 TangTieshan. All rights reserved.
//

#import "PFEnAutoLabel.h"

@implementation PFEnAutoLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)layoutSubviews
{
    self.preferredMaxLayoutWidth = self.frame.size.width;
    [super layoutSubviews];
}

@end
