//
//  ConfigurableButton.h
//  水平滚动菜单
//
//  Created by 唐铁山 on 16/11/8.
//  Copyright © 2016年 唐铁山. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTSFontConfigurableButton : UIButton

@property (strong, nonatomic) UIFont *normalFont;
@property (strong, nonatomic) UIFont *highlightedFont;
@property (strong, nonatomic) UIFont *selectedFont;
@property (strong, nonatomic) UIFont *disabledFont;

/**
 * Set a font for a button state.
 *
 * @param font  the font
 * @param state a control state -- can be
 *      UIControlStateNormal
 *      UIControlStateHighlighted
 *      UIControlStateDisabled
 *      UIControlStateSelected
 */
- (void) setFont:(UIFont *)font forState:(NSUInteger)state;

@end
