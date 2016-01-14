//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import "Patient.h"
#import <stdlib.h>
#import "Doctor.h"

@implementation Patient

+ (instancetype) patientWithName: (NSString *) name Age: (NSInteger) age{
    Patient *patient = [[Patient alloc] init];
    patient.name = name;
    patient.age = age;
    int r = arc4random_uniform(4);
    if (r ==4) {
        patient.hasHealthCard = NO;
    } else {
        patient.hasHealthCard = YES;

    }
    return patient;
}

- (void) querryDoctor: (Doctor *) doctor{
    NSLog(@"Me: Hey doc, what's your name and specialization?");
    NSLog(@"Doctor: I'm %@ and my specialy is %@.", doctor.name, doctor.specialization);
    NSLog(@"Me: great?");
    [doctor querryPatient:self];

}


- (void) visitDoctor: (Doctor *) doctor{
    NSLog(@"Me: Can I be your patient?");
    [doctor willAcceptPatient:self];
}

- (void) requestMedication: (Doctor *) doctor Symptoms: (NSString *) symptoms{
    NSLog(@"Me: Doc, I need some help.  I have a %@", symptoms);
    [self.perscriptions addObject:[doctor writePerscription:self Symptoms:symptoms]];
    }


@end
