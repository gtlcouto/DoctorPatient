//
//  main.m
//  DoctorPatient
//
//  Created by Gustavo Couto on 2016-05-05.
//  Copyright © 2016 Gustavo Couto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {

    Doctor * myDoctor = [[Doctor alloc] initWithName:@"Jhon" Specialization:@"Cardiologist"];
    Patient* myPatient = [[Patient alloc] initWithFirstName:@"Rodrigo" LastName:@"Matines" Age:@"24" Email:@"dasda@dasd.com" PhoneNumber:@"5192292292" HealthCard:nil];
    Patient* myPatient2 = [[Patient alloc] initWithFirstName:@"Rodrigo" LastName:@"Matines" Age:@"24" Email:@"dasda@dasd.com" PhoneNumber:@"5192292292" HealthCard:@"12341234"];

    myDoctor.patient = myPatient2;
    NSLog(@"D: Hello %@", myDoctor.patient.firstName);
    NSLog(@"P: Hello doctor");
    NSLog(@"D: Do you have a Health Card Mr. %@ ?", myDoctor.patient.lastName);
    if(myDoctor.patient.healthCard == nil)
    {
        NSLog(@"P: No I do not");
        NSLog(@"D: Sorry I can't accept you sir.");
        return 0;
    }
    NSLog(@"P: Yes I do");
    NSLog(@"D: Ok good, please fill up this form with all your information");
    PatientInformation* form = [[PatientInformation alloc] init];
    [myPatient fillForm:form];
    [myDoctor receivePatientForm:form];
    NSLog(@"D: What are your symptoms?");
    Symptoms* symptoms = [Symptoms new];
    symptoms.isfever = YES;
    Prescription* thePrescription = [myDoctor requestMedication:symptoms];
    NSLog(@"P: Thank you doctor");
    [myPatient.prescriptionHistory setObject:thePrescription forKey:thePrescription.date];
    
    
    




    return 0;
}
