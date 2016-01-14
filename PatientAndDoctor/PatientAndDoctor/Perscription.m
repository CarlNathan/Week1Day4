//
//  Perscription.m
//  PatientAndDoctor
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import "Perscription.h"

@implementation Perscription

+ (instancetype) perscriptionWithName: (NSString *) name{
    Perscription *perscription = [[Perscription alloc] init];
    perscription.name = name;
    return perscription;
}


@end
