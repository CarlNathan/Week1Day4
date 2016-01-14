//
//  Practice.m
//  LawyerUp
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import "Practice.h"
#import "Lawyer.h"

@implementation Practice

+ (instancetype) practice{
    Practice *practice = [[Practice alloc] init];
    practice.rates = @{@1: @200.00, @2: @380.50, @3: @405.99, @4: @400.00};
    return practice;
}

@end
