//
//  AddNePhone.h
//  Homework
//
//  Created by Konstantina on 1/26/16.
//  Copyright © 2016 Konstantina. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AddNewPhone : UIViewController

@property (nonatomic,strong) NSMutableArray* arr;
@property (weak, nonatomic) IBOutlet UITextField *manufacturerInfo;

@property (weak, nonatomic) IBOutlet UITextField *modelInfo;

@property (weak, nonatomic) IBOutlet UITextField *ownerInfo;

@property (weak, nonatomic) IBOutlet UITextField *priceInfo;

@property (weak, nonatomic) IBOutlet UITextField *displaySizeInfo;

@property (weak, nonatomic) IBOutlet UITextField *displayNumbersOfColors;

@property (weak, nonatomic) IBOutlet UITextField *batteryHoursTalk;

@property (weak, nonatomic) IBOutlet UITextField *batteryHoursIdle;

@property (weak, nonatomic) IBOutlet UITextField *batteryTypeInfo;

@end
