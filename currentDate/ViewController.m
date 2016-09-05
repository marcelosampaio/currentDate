//
//  ViewController.m
//  currentDate
//
//  Created by Marcelo Sampaio on 8/17/16.
//  Copyright © 2016 Marcelo Sampaio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSLocale*currentLocale = [NSLocale currentLocale];
//    [[NSDate date] descriptionWithLocale:currentLocale];
    
    /////
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    // or @"yyyy-MM-dd hh:mm:ss a" if you prefer the time with AM/PM
    NSLog(@"-----> %@",[dateFormatter stringFromDate:[NSDate date]]);
    
    // --
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear | NSCalendarUnitHour | NSCalendarUnitMinute fromDate:[NSDate date]];
    NSInteger day=[components day];
    NSInteger month=[components month];
    NSInteger year=[components year];
    NSInteger hour=[components hour];
    NSInteger minute=[components minute];
    
    
    
    
    
    NSLog(@"** month=%@",[NSString stringWithFormat:@"%02ld", (long)month]);
    NSLog(@"** hour=%0ld",(long)hour);
    
    
    
    
    //
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    
    
    
}

@end
