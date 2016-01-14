//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

+ (instancetype) doctorWithName: (NSString *) name Specialization: (NSString *) specialization{
    Doctor *doctor = [[Doctor alloc] init];
    doctor.name = name;
    doctor.specialization = specialization;
    doctor.acceptedPatients = [[NSMutableArray alloc] init];
    doctor.perscriptions = @{@"headache":[Perscription perscriptionWithName:@"Advil"]};
    return doctor;
}

- (void)querryPatient: (Patient *) patient{
    NSLog(@"Doctor.  What is your name and age?");
    NSLog(@"Me: I'm %@ and I'm %ldl years old?", patient.name, (long)patient.age);
}


- (void) willAcceptPatient: (Patient *) patient{
    if (patient.hasHealthCard) {
        [self.acceptedPatients addObject:patient];
        NSLog(@"How can I help?");
    } else {
        NSLog(@"Doctor: go get a healthcard!");
    }
}

- (Perscription *) writePerscription: (Patient *) patient Symptoms: (NSString *) symptoms{
    if ([self.acceptedPatients containsObject:patient]) {
        if ([self.perscriptions objectForKey: symptoms]) {
            NSLog(@"Doctor: I've written you a perscription.  I put it in your perscription array!");
            NSLog(@"Me: Thanks, Doc!");
            return [self.perscriptions objectForKey: symptoms];
        } else {
            NSLog(@"Doctor: Sorry, you're doomed.");
            return nil;
        }
        
    } else {
        NSLog(@"Doctor: Your're not one of my patients!");
        return nil;
    }
}
@end
