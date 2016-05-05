//
//  Doctor.m
//  DoctorPatient
//
//  Created by Gustavo Couto on 2016-05-05.
//  Copyright © 2016 Gustavo Couto. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

-(instancetype)initWithName:(NSString*)name Specialization:(NSString *)specialization
{
    self = [super init];
    if (self)
    {
        _name = name;
        _specialization = specialization;
        _isPatientAccepted = NO;

    }

    return self;
}

-(void)receivePatientForm:(PatientInformation *)form
{
    [self.patientArchive setObject:form forKey:[form.firstName stringByAppendingString:form.lastName]];
}

-(Prescription *)requestMedication:(Symptoms *)symptoms
{
    NSLog(@"Ok let me check which prescription is best for you");
    Prescription* prescription = [Prescription new];
    prescription.medicationName = @"Tylenol";
    prescription.patientName = [self.patient.firstName stringByAppendingString:self.patient.lastName];
    NSDate *currentDate = [[NSDate alloc] init];
    prescription.date = currentDate;
    NSLog(@"Ok, here is your prescription");
    return prescription;
}



@end
