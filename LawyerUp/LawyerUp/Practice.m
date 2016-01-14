//
//  Practice.m
//  LawyerUp
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import "Practice.h"

@implementation Practice

+ (instancetype) practice{
    Practice *practice = [[Practice alloc] init];
    practice.rates = @{@"Family": @200.00, @"Patent": @380.50, @"Criminal": @405.99, @"Corporate": @400.00};
    return practice;
}

@end
