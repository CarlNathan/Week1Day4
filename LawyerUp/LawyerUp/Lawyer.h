//
//  Lawyer.h
//  LawyerUp
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"
#import "Associate.h"

@interface Lawyer : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) Specialty specialty;
@property (nonatomic, strong) NSNumber *rate;
@property (nonatomic, strong) NSMutableArray *clientList;
@property (nonatomic, strong)  id<LawyerDelegate> delegate;

+(instancetype) lawyerWithSpecialty: (Specialty) specialty Rate: (NSNumber *) rate;

-(void)addClient:(Client *)client;

-(NSInteger)getPayableAmountForClient:(Client *)client;

@end
