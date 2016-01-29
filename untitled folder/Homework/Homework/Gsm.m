//
//  Gsm.m
//  Homework
//
//  Created by Konstantina on 1/25/16.
//  Copyright © 2016 Konstantina. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Gsm.h"
#import "Battery.h"
#import "Display.h"

@implementation Gsm

@synthesize  modelGsm = _model;
@synthesize  manufacturer = _manufacturer;
@synthesize  price = _price;
@synthesize  owner = _owner;


-(instancetype) initWithModel: (NSString*) model
                     andOwner: (NSString*) owner
              andManufacturer:(NSString*) manufacturer
                     andPrice: (long) price
                   andBattery: (Battery*) battery
                   andDisplay: (Display*) display{
    
    self = [super init];
    if (self) {
        self.modelGsm = model;
        self.owner = owner;
        self.manufacturer = manufacturer;
        self.price = price;
        self.battery = battery;
        self.display = display;
    }
    
    return self;
}

-(instancetype) initWithModel: (NSString*) model
                     andOwner: (NSString*) owner
              andManufacturer:(NSString*) manufacturer{
    
    return [self initWithModel:model
                      andOwner:owner
               andManufacturer:manufacturer
                      andPrice:NAN
                    andBattery:nil
                    andDisplay:nil];
}

-(instancetype) initWithModel: (NSString*) model
              andManufacturer: (NSString*) manufacturer{
    
    return [self initWithModel:model
                      andOwner:@""
               andManufacturer:manufacturer
                      andPrice:NAN
                    andBattery:nil
                    andDisplay:nil];
    
}

+(instancetype) initWithModel:(NSString *)model andManufacturer:(NSString *)manufacturer{
    return [[Gsm alloc]initWithModel:model
                     andManufacturer:manufacturer];
}

+(instancetype) initWithModel:(NSString *)model
                     andOwner:(NSString *)owner
              andManufacturer:(NSString *)manufacturer
{
    return [[Gsm alloc]initWithModel:model
                            andOwner:owner
                     andManufacturer:manufacturer];
}

+(instancetype) initWithModel:(NSString *)model
                     andOwner:(NSString *)owner
              andManufacturer:(NSString *)manufacturer
                     andPrice:(long)price
                   andBattery:(Battery *)battery
                   andDisplay:(Display *)display
{
    return [[Gsm alloc]initWithModel:model
                            andOwner:owner
                     andManufacturer:manufacturer
                            andPrice:price
                          andBattery:battery
                          andDisplay:display];
}


- (NSString*)manufacturer
{
    return _manufacturer;
}

-(void) setManufacturer:(NSString*)manufacturer{
    if([manufacturer isEqualToString:@""] || !manufacturer)
    {
        UIAlertView *view = [[UIAlertView alloc] initWithTitle:@"Manufacturer error"
                                                       message:@"Manufacturer can't be empty"
                                                      delegate:nil
                                             cancelButtonTitle:@"Ok"
                                             otherButtonTitles:nil, nil];
        [view show];
    }
    _manufacturer = manufacturer;
}


- (NSString*)owner
{
    return _owner;
}

-(void) setOwner:(NSString *)owner{
    if([owner isEqualToString:@""] || !owner)
    {
    owner=@" ";
    }
    _owner = owner;
}


- (NSString*)modelGsm
{
    return _model;
}

-(void) setModelGsm:(NSString*)modelGsm{
    if([modelGsm isEqualToString:@""] || !modelGsm)
    {
        
        UIAlertView *view = [[UIAlertView alloc] initWithTitle:@"Model error"
                                                       message:@"Model can't be empty"
                                                      delegate:nil
                                             cancelButtonTitle:@"Ok"
                                             otherButtonTitles:nil, nil];
        [view show];
        
        //        UIAlertController *alert = [UIAlertController
        //                                    alertControllerWithTitle:@"Enter Model"
        //                                    message:@"Model cant be empty"
        //                                    preferredStyle:UIAlertControllerStyleActionSheet];
        //
        //        [self presentViewController:alert animated:YES completion:nil];
        
        //        NSException	*ex = 	[[NSException alloc] initWithName:	@"Model out of range"
        //                                                      reason:@"Model cant be empty string" userInfo:nil];
        //
        //        [ex raise];
    }
    
    _model = modelGsm;
}

- (long)price
{
    return _price;
}

-(void) setPrice:(long)price{
    if(price<0)
    {
        price = 0;
        
    }
    
    _price = price;
}


+(Gsm*)IPhone5s{
    Battery *bat = [[Battery alloc]initWithType:LiIon andHoursIdle:100 andHoursTalk:50];
    Display *disp = [[Display alloc]initWithSize:50 andNumberOfColors:30000];
    
    return [[Gsm alloc]initWithModel:@"s5" andOwner:@"Harry Potter" andManufacturer:@"Apple" andPrice:2000 andBattery:bat andDisplay:disp];
}

- (NSString *)description {
    return [NSString stringWithFormat: @"GSM: Model=%@ Owner=%@ Manufacturer=%@ Price=%ld Battery=%@ Display=%@", self.modelGsm, self.owner, self.manufacturer, self.price,self.battery.description,self.display.description];
}

@end
