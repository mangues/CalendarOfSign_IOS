//
//  MYCalendarTool.h
//  HYCalendar
//
//  Created by why on 15/2/10.
//  Copyright (c) 2015年 nathan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HYCalendarTool : NSObject

+ (NSInteger)day:(NSDate *)date;
+ (NSInteger)month:(NSDate *)date;
+ (NSInteger)year:(NSDate *)date;

+ (NSInteger)firstWeekdayInThisMonth:(NSDate *)date;
+ (NSInteger)totaldaysInMonth:(NSDate *)date;

+ (NSDate *)lastMonth:(NSDate *)date;
+ (NSDate*)nextMonth:(NSDate *)date;

@end
