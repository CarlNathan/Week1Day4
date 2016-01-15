//
//  whatever.h
//  LawyerUp
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lawyer.h"
#import "Client.h"

@interface whatever : NSObject

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer *)lawyer;

-(NSInteger)payableAmountForClient:(Client *)client forLawyer:(Lawyer *)lawyer;


@end
