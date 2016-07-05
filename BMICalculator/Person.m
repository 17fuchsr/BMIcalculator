//
//  Person.m
//  BMICalculator
//
//  Created by Rachael on 6/29/16.
//  Copyright © 2016 Rachael. All rights reserved.
//

#import "Person.h"

//global area

static Person* secretPerson;

@implementation Person
@synthesize weightInKG;
@synthesize heightInM;
@synthesize age;
@synthesize gender;
@synthesize metric;

+(Person*) sharedPersonInstance
{
    if(secretPerson == nil){
        secretPerson = [[Person alloc] init];
        secretPerson.weightInKG = @78;
        secretPerson.heightInM = @1.75;
    }
    return secretPerson;
}

/*-(NSNumber*) description
{
    return [NSString stringWithFormat: @"%p %@ %@", self, self.weightInKG, self.heightInM]; //%p --> %@ --> look up this notation
}
*/

-(NSNumber*) bmi
{
    if(self.metric==@0){
        return @(weightInKG.floatValue/(heightInM.floatValue*heightInM.floatValue));
    }else{
        return @((703*weightInKG.floatValue)/(heightInM.floatValue*heightInM.floatValue));
    }
}


-(NSNumber*) bmr
{
    if(self.gender==@0){
        if(self.metric == @0){
            return @(655+(9.6*weightInKG.floatValue)+(180*heightInM.floatValue)-(4.7*age.floatValue));
        }else{//calculate in not metric
            return @(655+(4.35*weightInKG.floatValue)+(4.7*heightInM.floatValue)-(4.7*age.floatValue));
        }
    }
    else if(self.gender==@1){
        if(self.metric == @0){
            return @(66+(13.7*weightInKG.floatValue)+(500*heightInM.floatValue)-(6.8*age.floatValue));
        }else{ //calculate in not metric
            return @(66+(6.23*weightInKG.floatValue)+(12.7*heightInM.floatValue)-(6.8*age.floatValue));
        }
    }else{
        return @0;
    }
}

@end
