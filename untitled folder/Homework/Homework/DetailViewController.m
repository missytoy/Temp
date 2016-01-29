//
//  DetailViewController.m
//  Homework
//
//  Created by Konstantina on 1/27/16.
//  Copyright © 2016 Konstantina. All rights reserved.
//

#import "DetailViewController.h"
#import "Gsm.h"

@implementation DetailViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.manufacturerLabel.text = self.phone.manufacturer;
    self.modelLabel.text = self.phone.modelGsm;
    self.priceLabel.text =  [NSString stringWithFormat:@"%ld",self.phone.price];
    self.ownerLabel.text = self.phone.owner;
    
    if (self.phone.battery.model == LiIon) {
        self.batteryTypeLabel.text = @"LiIon";
    }
    else if(self.phone.battery.model == NiCD){
        self.batteryTypeLabel.text = @"NiCD";
    }
    else if(self.phone.battery.model == NiMH){
        self.batteryTypeLabel.text = @"NiMH";
    }
    self.batteryIdleLabel.text = [NSString stringWithFormat:@"%ld",self.phone.battery.hoursIdle];
    self.batteryTalkLabel.text = [NSString stringWithFormat:@"%ld",self.phone.battery.hoursTalk];
    
    self.displaySizeLabel.text = [NSString stringWithFormat:@"%f",self.phone.display.size];
    self.displayNumOfColorsLabel.text = [NSString stringWithFormat:@"%ld",self.phone.display.numberOfColors];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

