//
//  Gsm.h
//  Homework
//
//  Created by Konstantina on 1/25/16.
//  Copyright © 2016 Konstantina. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Battery.h"
#import "Display.h"

@interface Gsm : NSObject


@property (strong,nonatomic) NSString* modelGsm;
@property (strong,nonatomic) NSString* owner;
@property (strong,nonatomic) NSString* manufacturer;
@property long price;
@property Battery* battery;
@property Display* display;


- (void)presentViewController:(UIViewController *)viewControllerToPresent
                     animated:(BOOL)flag
                   completion:(void (^)(void))completion;

-(instancetype) initWithModel: (NSString*) modelGsm
                     andOwner: (NSString*) owner
              andManufacturer:(NSString*) manufacturer
                     andPrice: (long) price
                   andBattery: (Battery*) battery
                   andDisplay: (Display*) display;

-(instancetype) initWithModel: (NSString*) modelGsm
              andManufacturer: (NSString*) manufacturer;

-(instancetype) initWithModel: (NSString*) modelGsm
                     andOwner: (NSString*) owner
              andManufacturer:(NSString*) manufacturer;

+(instancetype) initWithModel:(NSString*) modelGsm
              andManufacturer: (NSString*) manufacturer;

+(instancetype) initWithModel:(NSString*) modelGsm
                     andOwner: (NSString*) owner
              andManufacturer:(NSString *) manufacturer;

+(instancetype) initWithModel: (NSString*) modelGsm
                     andOwner: (NSString*) owner
              andManufacturer:(NSString*) manufacturer
                     andPrice: (long) price
                   andBattery: (Battery*) battery
                   andDisplay: (Display*) display;

+(Gsm*)IPhone5s;

@end