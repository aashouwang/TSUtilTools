//
//  NSDate+DateToString.m
//  NSDateDemo
//
//  Created by TangTieshan on 16/8/18.
//  Copyright © 2016年 TangTieshan. All rights reserved.
//

#import "NSDate+DateString.h"

@implementation NSDate (DateString)
+ (NSString *) compareCurrentTime:(NSString *)str dateFormate:(NSString *)dateFormate
{
    
    //把字符串转为NSdate
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:dateFormate];
    NSDate *timeDate = [dateFormatter dateFromString:str];
    
    //得到与当前时间差
    NSTimeInterval  timeInterval = [timeDate timeIntervalSinceNow];
    timeInterval = -timeInterval;
    //标准时间和北京时间差8个小时
    timeInterval = timeInterval - 8*60*60;
    long temp = 0;
    NSString *result;
    
    if (timeInterval < 60) {
        result = [NSString stringWithFormat:@"刚刚"];
    }
    else if((temp = timeInterval / 60) < 60){
        result = [NSString stringWithFormat:@"%ld分钟前", temp];
    }
    
    else if((temp = temp / 60) < 24){
        result = [NSString stringWithFormat:@"%ld小时前", temp];
    }
    
    else if((temp = temp / 24) < 30){
        result = [NSString stringWithFormat:@"%ld天前", temp];
    }
    
    else if((temp = temp / 30) < 12){
        result = [NSString stringWithFormat:@"%ld月前", temp];
    }
    else{
        temp = temp / 12;
        result = [NSString stringWithFormat:@"%ld年前", temp];
    }
    return  result;
}

+ (NSString *)compareCurrentTimeByYear:(NSString *)str dateFormate:(NSString *)dateFormate destDateFormate:(NSString *)destDateFormate
{
    //把字符串转为NSdate
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    NSDate * currentDate = [NSDate date];
    
    [dateFormatter setDateFormat:@"yyyy"];
    
    NSString * currentYear = [dateFormatter stringFromDate:currentDate];
    
    if (![str hasPrefix:currentYear]) {
        return [self getDateStringFromString:str withFormateString:dateFormate destFormateString:@"yyyy-MM-dd"];
    }
    
    return [self getDateStringFromString:str withFormateString:dateFormate destFormateString:destDateFormate];
}

+ (NSString *)getDateStringFromString:(NSString *)dateStr withFormateString:(NSString *)formateStr destFormateString:(NSString *)destFormateStr
{
    NSDate * date = [self getDateFromString:dateStr withFormatString:formateStr];
    
    return [self getDateStringFromDate:date withDestFormateString:destFormateStr];
}

+ (NSString *)getDateStringFromDate:(NSDate *)date withDestFormateString:(NSString *)destFormateStr
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:destFormateStr];
    
    NSString *destDateString = [dateFormatter stringFromDate:date];
    
    [dateFormatter release];
    
    return destDateString;
}

/**
 *  将时间字符串转化为NSDate
 *
 *  @param dateStr    时间字符串 2016-05-27 18:07:40
 *  @param formateStr DateFormateStr YYYY-MM-dd HH:mm:ss
 *
 *  @return NSDate对象
 */
+ (NSDate *)getDateFromString:(NSString *)dateStr withFormatString:(NSString *)formateStr
{
    NSDateFormatter * formatter = [[[NSDateFormatter alloc] init] autorelease];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:formateStr];
    
    NSDate * date = [formatter dateFromString:dateStr];
    
    return date;
}

/**
 *  一天所占的时间戳
 *
 *  @return 一天时间戳
 */
+ (NSInteger)getOneDayTimeInterval
{
    return 24 * 60 * 60 * 1000;
}

/**
 *  获取当前的时间戳
 *
 *  @return 当前的时间戳
 */
+ (NSInteger)getCurrentTimeInterval
{
    return [[NSDate date] timeIntervalSince1970] * 1000;
}

@end
