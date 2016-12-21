//
//  TTScaleButton.h
//
//  Created by TangTieshan on 16/7/15.
//  Copyright © 2016年 TangTieshan. All rights reserved.
//

/**
 *  缩放按钮类，实现了按钮按下缩小，抬起或者取消时恢复原来大小的效果
 */

#import <UIKit/UIKit.h>

@interface TTScaleButton : UIButton

@property (nonatomic, assign) BOOL isOpenScale;     //是否开启按钮缩放，默认为开启（YES）
@property (nonatomic, assign) CGFloat buttonScale; //缩小的比例，小于=1.0,大于0.0, 默认为0.9

@end
