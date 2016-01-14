//
//  main.m
//  PatientAndDoctor
//
//  Created by Carl Udren on 1/14/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    {
        Doctor *doctor = [Doctor doctorWithName:@"Dr. Lighthouse" Specialization:@"Poor Patient Care"];
        Patient *patient = [Patient patientWithName:@"Nate" Age:26];
        
        [patient querryDoctor:doctor];
        
        [patient requestMedication:doctor Symptoms:@"headache"];
        
        [patient visitDoctor:doctor];
        [patient requestMedication:doctor Symptoms:@"Broken Leg"];
        [patient requestMedication:doctor Symptoms:@"headache"];
    }
    return 0;
}
