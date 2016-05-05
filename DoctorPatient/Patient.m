//
//  Patient.m
//  DoctorPatient
//
//  Created by Gustavo Couto on 2016-05-05.
//  Copyright © 2016 Gustavo Couto. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(void)setHasHealthCard:(BOOL)hasHealthCard
{
    if(self.healthCard != nil)
    {
        hasHealthCard = YES;
    } 
}

-(instancetype)initWithFirstName:(NSString*)firstName LastName:(NSString*)lastName Age:(NSString *)age Email:(NSString*)email PhoneNumber:(NSString*)phoneNumber HealthCard:(NSString *)healthCard
{
    self = [super init];
    if (self)
    {
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
        _email = email;
        _phoneNumber = phoneNumber;
        _healthCard = healthCard;
    }
    return self;
}

-(void)fillForm:(PatientInformation*)form
{
    form.age = self.age;
    form.lastName = self.lastName;
    form.firstName = self.firstName;
    form.email = self.email;
    form.phoneNumber = self.phoneNumber;
    form.healthCard = self.healthCard;
}

@end
