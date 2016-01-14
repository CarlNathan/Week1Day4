//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Perscription.h"

@class Patient;
@interface Doctor : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *specialization;
@property (nonatomic) NSMutableArray *acceptedPatients;
@property (nonatomic) NSDictionary *perscriptions;

+ (instancetype) doctorWithName: (NSString *) name Specialization: (NSString *) specialization;

- (void)querryPatient: (Patient *) patient;

- (void) willAcceptPatient: (Patient *) patient;

- (Perscription *) writePerscription: (Patient *) patient Symptoms: (NSString *) symptoms;


@end
