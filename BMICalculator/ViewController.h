//
//  ViewController.h
//  BMICalculator
//
//  Created by Rachael on 6/28/16.
//  Copyright © 2016 Rachael. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface ViewController : UIViewController

//text field
@property (weak, nonatomic) IBOutlet UITextField *weightTextField; //nonatomic adjusts easily to user so people can play with it and change it

@property (weak, nonatomic) IBOutlet UITextField *heightTextField;

@property (weak, nonatomic) IBOutlet UITextField *ageTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *genderSwitch;

//switches metric labels
- (IBAction)labelSwitch:(id)sender;
//calc button
- (IBAction)buttonPressed:(id)sender;

//metric switch
@property (weak, nonatomic) IBOutlet UISwitch *metricSwitch;

//weight label
@property (weak, nonatomic) IBOutlet UILabel *weightLabel;
//height label
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;

//label for BMI
@property (weak, nonatomic) IBOutlet UILabel *columbiaText;
//label for BMR
@property (weak, nonatomic) IBOutlet UILabel *bmrLabel;

//image
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;

@end

