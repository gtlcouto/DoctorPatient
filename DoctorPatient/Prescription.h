//
//  Prescription.h
//  DoctorPatient
//
//  Created by Gustavo Couto on 2016-05-05.
//  Copyright © 2016 Gustavo Couto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prescription : NSObject

@property NSString* patientName;
@property NSString* medicationName;
@property NSDate* date;

@end
