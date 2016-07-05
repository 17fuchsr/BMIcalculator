//
//  Person.h
//  BMICalculator
//
//  Created by Rachael on 6/29/16.
//  Copyright © 2016 Rachael. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (strong, nonatomic) NSNumber* weightInKG;
@property (strong, nonatomic) NSNumber* heightInM;
@property (strong, nonatomic) NSNumber* age;
@property (strong, nonatomic) NSNumber* gender;
@property (strong, nonatomic) NSNumber* metric;

+(Person*) sharedPersonInstance;

-(NSNumber*) bmi;

-(NSNumber*) bmr;


@end
