//
//  Lawyer.m
//  LawyerUp
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import "Lawyer.h"

@implementation Lawyer

+(instancetype) lawyerWithSpecialty: (Specialty) specialty Rate: (NSNumber *) rate{
    Lawyer *lawyer = [[Lawyer alloc] init];
    specialty = specialty;
    rate = rate;
    return lawyer;
}

-(void)addClient: (Client *)client{
    [self.delegate addClientToClientList:client forLawyer:self];
    }



@end
