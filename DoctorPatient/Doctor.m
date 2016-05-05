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



@end
