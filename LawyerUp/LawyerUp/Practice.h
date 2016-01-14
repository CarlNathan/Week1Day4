//
//  Practice.h
//  LawyerUp
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Lawyer;

typedef NS_ENUM(NSInteger, Specialty) {
    Family = 1,
    Patent = 2,
    Criminal = 3,
    Corporate = 4,
};
    

@interface Practice : NSObject

@property (nonatomic, strong) NSMutableArray *lawyers;
@property (nonatomic, strong) NSDictionary *rates;

+ (instancetype) practice;

@end
