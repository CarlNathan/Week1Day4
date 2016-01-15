//
//  whatever.m
//  LawyerUp
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import "whatever.h"
#import "Lawyer.h"
#import "Client.h"

@implementation whatever

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer *)lawyer{
    [lawyer.clientList addObject:client];
}

-(NSInteger)payableAmountForClient:(Client *)client forLawyer:(Lawyer *)lawyer{
    NSInteger problemLength = client.problem.length;
    if (problemLength<10) {
        return [lawyer.rate integerValue] * 5;
    } else if (problemLength >= 10 && problemLength < 20) {
        return [lawyer.rate integerValue] * 10;
    } else {
        return [lawyer.rate integerValue] * 25;
        
    }
}



@end
