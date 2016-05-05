//
//  Patient.h
//  DoctorPatient
//
//  Created by Gustavo Couto on 2016-05-05.
//  Copyright © 2016 Gustavo Couto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PatientInformation.h"
@class Doctor;

@interface Patient : NSObject

@property (copy, nonatomic)NSString* firstName;
@property (copy, nonatomic)NSString* lastName;
@property (copy, nonatomic)NSString* age;
@property (copy, nonatomic)NSString* email;
@property (copy, nonatomic)NSString* phoneNumber;
@property (nonatomic)BOOL hasHealthCard;
@property (copy, nonatomic)NSString* healthCard;
@property NSMutableDictionary* prescriptionHistory;

-(instancetype)initWithFirstName:(NSString*)firstName LastName:(NSString*)lastName Age:(NSString *)age Email:(NSString*)email PhoneNumber:(NSString*)phoneNumber HealthCard:(NSString *)healthCard;
-(void)fillForm:(PatientInformation *)form;

@end
