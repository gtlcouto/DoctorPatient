//
//  Doctor.h
//  DoctorPatient
//
//  Created by Gustavo Couto on 2016-05-05.
//  Copyright © 2016 Gustavo Couto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "PatientInformation.h"
#import "Symptoms.h"
#import "Prescription.h"

@interface Doctor : NSObject


@property (copy, nonatomic)NSString* name;
@property (copy, nonatomic)NSString* specialization;
@property (nonatomic) Patient* patient;
@property (nonatomic)BOOL isPatientAccepted;
@property (nonatomic)PatientInformation* patientInformation;
@property (nonatomic)NSMutableDictionary* patientArchive;

-(instancetype)initWithName:(NSString*)name Specialization:(NSString *)specialization;
-(void)receivePatientForm:(PatientInformation *)form;
-(Prescription *)requestMedication:(Symptoms *)symptoms;

@end
