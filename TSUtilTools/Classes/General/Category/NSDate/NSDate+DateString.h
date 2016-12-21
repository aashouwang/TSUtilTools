//
//  NSDate+DateToString.h
//  NSDateDemo
//
//  Created by TangTieshan on 16/8/18.
//  Copyright © 2016年 TangTieshan. All rights reserved.
//

/**
 *  该Category，主要处理NSDate和NSString之间的转换
 *
 */

#import <Foundation/Foundation.h>

@interface NSDate (DateString)

/**
 *  判断时间距离当前的时间，几分钟前、几小时前、几天前、几个月前
 *
 *  @param str         时间字符串
 *  @param dateFormate 字符串对应的formate   例如：yyyy-MM-dd HH:mm:ss.SSS
 *
 *  @return 返回的距离当前的时间
 */
+ (NSString *)compareCurrentTime:(NSString *)str dateFormate:(NSString *)dateFormate;



/**
 *  判断时间跟当前的时间是否是在同一年，如果在同一年，则只返回月、日，如果不在同一年，则返回要求显示的日期格式destDateFormate
 *
 *  @param str             时间字符串
 *  @param dateFormate     字符串对应的formate   例如：yyyy-MM-dd HH:mm:ss.SSS
 *  @param destDateFormate 要求显示的日期格式destDateFormate
 *
 *  @return 返回的需要显示的时间
 */
+ (NSString *)compareCurrentTimeByYear:(NSString *)str dateFormate:(NSString *)dateFormate destDateFormate:(NSString *)destDateFormate;



/**
 *  将时间字符串转化为NSDate
 *
 *  @param dateStr    时间字符串 2016-05-27 18:07:40
 *  @param formateStr DateFormateStr YYYY-MM-dd HH:mm:ss
 *
 *  @return NSDate对象
 */
+ (NSDate *)getDateFromString:(NSString *)dateStr withFormatString:(NSString *)formateStr;



/**
 *  将时间字符串返回为要求的时间格式
 *
 *  @param dateStr        原时间字符串
 *  @param formateStr     原时间字符串对应的DateFormate 例如：yyyy-MM-dd HH:mm:ss.SSS
 *  @param destFormateStr 要求的时间格式
 *
 *  @return 返回的需要显示的时间
 */
+ (NSString *)getDateStringFromString:(NSString *)dateStr withFormateString:(NSString *)formateStr destFormateString:(NSString *)destFormateStr;



/**
 *  将NSDate，时间对象转化为特定格式的时间字符串
 *
 *  @param date           NSDate对象
 *  @param destFormateStr 需要转化的时间字符串的DateFormate 例如：yyyy-MM-dd HH:mm:ss.SSS
 *
 *  @return 返回的需要显示的时间
 */
+ (NSString *)getDateStringFromDate:(NSDate *)date withDestFormateString:(NSString *)destFormateStr;



/**
 *  一天所占的时间戳
 *
 *  @return 一天时间戳
 */
+ (NSInteger)getOneDayTimeInterval;



/**
 *  获取当前的时间戳
 *
 *  @return 当前的时间戳
 */
+ (NSInteger)getCurrentTimeInterval;
@end
