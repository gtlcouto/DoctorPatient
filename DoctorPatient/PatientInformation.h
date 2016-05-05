//
//  PatientInformation.h
//  DoctorPatient
//
//  Created by Gustavo Couto on 2016-05-05.
//  Copyright © 2016 Gustavo Couto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PatientInformation : NSObject


@property (copy, nonatomic)NSString* firstName;
@property (copy, nonatomic)NSString* lastName;
@property (copy, nonatomic)NSString* age;
@property (copy, nonatomic)NSString* email;
@property (copy, nonatomic)NSString* phoneNumber;
@property (copy, nonatomic)NSString* healthCard;


@end
