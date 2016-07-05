//
//  ViewController.m
//  BMICalculator
//
//  Created by Rachael on 6/28/16.
//  Copyright © 2016 Rachael. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    //NSLog(@"My buttons are being pressed.");
    //prints in consul
    //NSLog(@"The text is: %@", self.weightTextField.text);
    //prints in consul
    //self.columbiaText.text = self.myTextField.text; //has to be the same type on left and right side so add .text to the label
        //changes label on view
    
    Person* p = [Person sharedPersonInstance];
    NSLog(@"%@", [p description]);
    
    //variables for person
    
    p.weightInKG = @(self.weightTextField.text.floatValue);// left is NSNumber* and right is float value integral and reference
    p.heightInM = @(self.heightTextField.text.floatValue);
    if(self.metricSwitch.on){
        p.metric = @0;
    }else{
        p.metric = @1;
    }
    p.age = @(self.ageTextField.text.floatValue);
    NSNumber *bmi = p.bmi;
    
    
    if(self.genderSwitch.selectedSegmentIndex == 0){
        p.gender = @0;
    }else if(self.genderSwitch.selectedSegmentIndex == 1){
        p.gender = @1;
    }
    
    NSNumber *bmr = p.bmr;
    
    //self.columbiaText.text = bmi.stringValue; //sets it equal to each other
    
    //shows numbers for bmi and bmr
    self.columbiaText.text= [NSString stringWithFormat:@"%.2f",bmi.floatValue];
    self.bmrLabel.text= [NSString stringWithFormat:@"%.2f", bmr.floatValue];
    
    //image control depending on bmi
    UIImage* newImage;
    NSString* path;
    NSBundle *myBundle = [NSBundle mainBundle];
    if(@(p.bmi.intValue)>@18 && @(p.bmi.intValue)<=@24){
        path = [myBundle pathForResource:@"Healthy" ofType:@"png"];
    }else if (@(p.bmi.intValue)<=@18){
        path = [myBundle pathForResource:@"Underweight" ofType:@"png"];
    }else if (@(p.bmi.intValue)>@24 && @(p.bmi.intValue)<@30){
        path = [myBundle pathForResource:@"Overweight" ofType:@"png"];
    }else{
        path = [myBundle pathForResource:@"Obese" ofType:@"png"];
    }
    newImage = [UIImage imageWithContentsOfFile: path];
    self.myImageView.image = newImage;
    
    
    //if user clicks button keyboard goes away
    [self.weightTextField resignFirstResponder];
    [self.heightTextField resignFirstResponder];
    [self.ageTextField resignFirstResponder];

}


-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //NSLog(@"Touches Began!");
    [self.weightTextField resignFirstResponder];
    [self.heightTextField resignFirstResponder];
    [self.ageTextField resignFirstResponder];

    
}
- (IBAction)labelSwitch:(id)sender {
    if(self.metricSwitch.on){
        self.weightLabel.text = @"kg";
        self.heightLabel.text = @"m";
    }else{
        self.weightLabel.text = @"lbs";
        self.heightLabel.text = @"in";
    }
}
@end
