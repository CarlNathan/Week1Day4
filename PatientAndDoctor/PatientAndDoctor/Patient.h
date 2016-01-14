//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Perscription.h"

@class Doctor;
@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSInteger age;
@property (nonatomic) BOOL hasHealthCard;
@property (nonatomic) NSMutableArray *perscriptions;

+ (instancetype) patientWithName: (NSString *) name Age: (NSInteger) age;

- (void) querryDoctor: (Doctor *) doctor;

- (void) visitDoctor: (Doctor *) doctor;

- (void) requestMedication: (Doctor *) doctor Symptoms: (NSString *) symptoms;

@end
