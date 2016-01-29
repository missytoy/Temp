//
//  Battery.m
//  Homework
//
//  Created by Konstantina on 1/25/16.
//  Copyright © 2016 Konstantina. All rights reserved.
//

#import "Battery.h"

@implementation Battery


@synthesize  hoursIdle = _hoursIdle;
@synthesize hoursTalk = _hoursTalk;

-(instancetype)init{
    self = [super init];
    if(self) {
        
    }
    
    return self;
}

-(instancetype) initWithType:(BatteryType) model
                andHoursIdle:(long) hoursIdle
                andHoursTalk:(long) hoursTalk{
    
    self = [super init];
    if(self) {
        self.model= model;
        self.hoursIdle = hoursIdle;
        self.hoursTalk = hoursTalk;
    }
    
    return self;
}

- (long)hoursIdle
{
    return _hoursIdle;
}

- (void)setHoursIdle:(long)hoursIdle
{
    if(hoursIdle < 0)
    {
        hoursIdle =0;
    }
    
    _hoursIdle = hoursIdle;
}

- (long)hoursTalk
{
    return _hoursTalk;
}

-(void) setHoursTalk:(long)hoursTalk{
    if(hoursTalk < 0)
    {
        hoursTalk =0;
    }
    
    _hoursTalk = hoursTalk;
}



- (NSString *)description {
    return [NSString stringWithFormat: @"Battery: Type=%u Hours Idle:%ld Hours Talk:%ld",
            self.model,self.hoursIdle,self.hoursTalk];
}

@end

