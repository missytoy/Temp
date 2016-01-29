//
//  AddNePhone.m
//  Homework
//
//  Created by Konstantina on 1/26/16.
//  Copyright © 2016 Konstantina. All rights reserved.
//

#import "AddNewPhone.h"
#import "ViewController.h"
#import "Gsm.h"

@implementation AddNewPhone : UIViewController


- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    if(!self.arr) {
        self.arr = [[NSMutableArray alloc]init];
    };
}

- (IBAction)AddNewPhoneButtonClick:(id)sender {
    
//   ViewController *instanceOfClass = [[ViewController alloc] init];
// NSDate *now = [[NSDate alloc] init];
    
    NSString *modelString = self.modelInfo.text;
    NSString *manufacturerString = self.manufacturerInfo.text;
    NSString *ownerString = self.ownerInfo.text;
    long priceInfo = [self.priceInfo.text integerValue];
    
    double displaySizeString  = [self.displaySizeInfo.text doubleValue];
//    
//    if(displaySizeString <0 ){
//        UIAlertView *view = [[UIAlertView alloc] initWithTitle:@"Display size error"
//                                                       message:@"Display size can't be less than zero"
//                                                      delegate:nil
//                                             cancelButtonTitle:@"Ok"
//                                             otherButtonTitles:nil, nil];
//        [view show];
//        isTrue = false;
//    }
    
    long displayNumberOfColorString = [self.displaySizeInfo.text integerValue];
    
    long hoursIdleString = [self.batteryHoursIdle.text integerValue];
    long hourstalkString = [self.batteryHoursTalk.text integerValue];
    BatteryType batteryTypeString;
    if([self.batteryTypeInfo.text  isEqual: @"NiCD"]){
        batteryTypeString=NiCD;
    }else if([self.batteryTypeInfo.text  isEqual: @"NiMH"]){
        batteryTypeString=NiMH;
    }else{
        batteryTypeString=LiIon;
    }
    
    Battery* newBattery = [[Battery alloc]
                                    initWithType:batteryTypeString
                                     andHoursIdle:hoursIdleString
                                     andHoursTalk:hourstalkString];
    
    
    Display* newDisplay = [[Display alloc]
                           initWithSize:displaySizeString andNumberOfColors:displayNumberOfColorString];
    
    Gsm* phone = [Gsm initWithModel:modelString
                           andOwner:ownerString
                    andManufacturer:manufacturerString
                           andPrice:priceInfo
                         andBattery:newBattery
                         andDisplay:newDisplay];

    [self.arr insertObject:phone atIndex:0];
   
 //[self.tabeView reload] //tableViewDates
//    
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if([self.modelInfo.text  isEqual: @""] || !self.modelInfo.text){
        return NO;
    }
    
    if([self.manufacturerInfo.text  isEqual: @""] || !self.manufacturerInfo.text){
        return NO;
    }
    
    return YES;
}

- (void)didReceiveMemoryWarning {
        [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
}

//In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    
    ViewController* toVC = segue.destinationViewController;
    toVC.dates = self.arr ;
}

@end
