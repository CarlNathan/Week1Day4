//
//  Lawyer.h
//  LawyerUp
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"
#import "Client.h"

@class Associate;

@protocol AssociateDelegate <NSObject>

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer *)lawyer;

-(NSInteger)payableAmountForClient:(Client *)client forLawyer:(Lawyer *)lawyer;

@end

@interface Lawyer : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) Specialty specialty;
@property (nonatomic, strong) NSNumber *rate;
@property (nonatomic, strong) NSMutableArray *clientList;
@property (nonatomic, weak) id <AssociateDelegate> delegate;

+(instancetype) lawyerWithSpecialty: (Specialty) specialty Rate: (NSNumber *) rate;

-(void)addClient: (Client *)client;

-(NSInteger)payableAmountForClient:(Client *)client;

@end
