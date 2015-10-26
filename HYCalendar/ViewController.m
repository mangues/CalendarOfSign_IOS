//
//  ViewController.m
//  HYCalendar
//
//  Created by nathan on 14-9-27.
//  Copyright (c) 2014年 nathan. All rights reserved.
//

#import "ViewController.h"
#import "HYCalendarView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGSize size = [UIScreen mainScreen].bounds.size;
    
    // demo1
    HYCalendarView *calendarView = [[HYCalendarView alloc] init];
    calendarView.frame = CGRectMake(10, 30, size.width-20, 200);
    [self.view addSubview:calendarView];
    
    //设置已经签到的天数日期
    NSMutableArray* _signArray = [[NSMutableArray alloc] init];
    [_signArray addObject:[NSNumber numberWithInt:1]];
    [_signArray addObject:[NSNumber numberWithInt:5]];
    [_signArray addObject:[NSNumber numberWithInt:9]];
    calendarView.signArray = _signArray;
    
    
    calendarView.date = [NSDate date];

    
      NSDateComponents *comp = [[NSCalendar currentCalendar] components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:[NSDate date]];
    //日期点击事件
     __weak typeof(HYCalendarView) *weakDemo = calendarView;
    calendarView.calendarBlock =  ^(NSInteger day, NSInteger month, NSInteger year){
        if ([comp day]==day) {
             NSLog(@"%li-%li-%li", year,month,day);
            //根据自己逻辑条件 设置今日已经签到的style 没有签到不需要写
            [weakDemo setStyle_Today_Signed:weakDemo.dayButton];
        }
    };
    
//    // demo2
//    HYCalendarView *calendarView2 = [[HYCalendarView alloc] init];
//    calendarView2.frame = CGRectMake(10, 230, size.width-20, 200);
//    [self.view addSubview:calendarView2];
//    
//    calendarView2.date = [HYCalendarTool nextMonth:[NSDate date]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
