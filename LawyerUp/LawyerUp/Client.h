//
//  Client.h
//  LawyerUp
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"

@interface Client : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *problem;
@property (nonatomic, assign) Specialty specialty;


@end
