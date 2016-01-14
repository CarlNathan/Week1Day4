//
//  main.m
//  LawyerUp
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"
#import "Lawyer.h"

int main(int argc, const char * argv[]) {
   {
       Practice *practice = [Practice practice];
       Lawyer *lawyerJim = [[Lawyer alloc] init];
       lawyerJim.name = @"Jim";
       Lawyer *lawyerEmily = [[Lawyer alloc] init];
       lawyerEmily.name = @"Emily";
       [practice.lawyers addObject:lawyerJim];
       [practice.lawyers addObject:lawyerEmily];
       Associate *associateBill = [[Associate alloc] init];
       Associate *associateJill = [[Associate alloc] init];
       lawyerJim.delegate = associateBill;
       lawyerEmily.delegate = associateJill;
       
       Client *client1 = [[Client alloc] init];
       client1.name = @"Sally";
       client1.problem = @"Cheating Husband";
       client1.specialty = Family;
       Client *client2 = [[Client alloc] init];
       client2.name = @"Henry";
       client2.problem = @"Hackers are stealing my Company's stuff";
       client2.specialty = Corporate;
       
       lawyerJim.specialty = Family;
       lawyerJim.rate = practice.rates[@(Family)];
       lawyerEmily.specialty = Corporate;
       lawyerEmily.rate = practice.rates[@(Corporate)];
       
       [lawyerJim addClient:client1];
       [lawyerEmily addClient:client2];
       NSInteger owed1 = [lawyerJim getPayableAmountForClient:client1];
       NSInteger owed2 = [lawyerEmily getPayableAmountForClient:client2];
    }
    return 0;
}
