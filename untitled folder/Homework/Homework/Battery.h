//
//  Battery.h
//  Homework
//
//  Created by Konstantina on 1/25/16.
//  Copyright © 2016 Konstantina. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Battery : NSObject


typedef enum batteryType{
    LiIon,
    NiMH,
    NiCD
}BatteryType;


@property BatteryType model;
@property long hoursIdle;
@property long hoursTalk;

-(instancetype) init;

-(instancetype) initWithType:(BatteryType) model
                andHoursIdle:(long) hoursIdle
                andHoursTalk:(long) hoursTalk;


- (NSString *)description ;

@end
