//
//  Associate.h
//  LawyerUp
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Client.h"
#import "Lawyer.h"


@protocol LawyerDelegate <NSObject>

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer *)lawyer;

-(NSInteger)payableAmountForClient:(Client *)client forLawyer:(Lawyer *)lawyer;

@end

@interface Associate : NSObject <LawyerDelegate>


@end

