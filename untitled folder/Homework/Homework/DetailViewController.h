//
//  DetailViewController.h
//  Homework
//
//  Created by Konstantina on 1/27/16.
//  Copyright © 2016 Konstantina. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Gsm.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Gsm *phone;
@property (weak, nonatomic) IBOutlet UILabel *manufacturerLabel;
@property (weak, nonatomic) IBOutlet UILabel *modelLabel;


@property (weak, nonatomic) IBOutlet UILabel *ownerLabel;

@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@property (weak, nonatomic) IBOutlet UILabel *displaySizeLabel;
@property (weak, nonatomic) IBOutlet UILabel *displayNumOfColorsLabel;

@property (weak, nonatomic) IBOutlet UILabel *batteryIdleLabel;

@property (weak, nonatomic) IBOutlet UILabel *batteryTalkLabel;
@property (weak, nonatomic) IBOutlet UILabel *batteryTypeLabel;

//
//@property (weak, nonatomic) IBOutlet UILabel *modelLabel;
//
//@property (weak, nonatomic) IBOutlet UILabel *manufacturereLabel;
//
//@property (weak, nonatomic) IBOutlet UILabel *ownerLabel;
//
//@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
//
//@property (weak, nonatomic) IBOutlet UILabel *displaySizeLabel;
//
//@property (weak, nonatomic) IBOutlet UILabel *displayNumOfColors;
//
//@property (weak, nonatomic) IBOutlet UILabel *batteryTalkLabel;
//
//@property (weak, nonatomic) IBOutlet UILabel *batteryIdleLabel;
//
//
//@property (weak, nonatomic) IBOutlet UILabel *batteryTypeLabel;

@end
