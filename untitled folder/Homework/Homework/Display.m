//
//  Display.m
//  Homework
//
//  Created by Konstantina on 1/25/16.
//  Copyright © 2016 Konstantina. All rights reserved.
//

#import "Display.h"

@implementation Display

@synthesize size = _size;
@synthesize numberOfColors = _numberOfColors;



-(instancetype) initWithSize: (double) size
           andNumberOfColors: (long) numberOfColors{
    
    if (self) {
        self.size = size;
        self.numberOfColors = numberOfColors;
    }
    
    return self;
}


-(instancetype)init{
    self = [super init];
    if(self) {
        
    }
    
    return self;
}

- (double)size
{
   return  _size;
}

- (void)setSize:(double)size
{
    if(size < 0)
    {
        size =0;
    }
    
     _size= size;
}

- (long)numberOfColors
{
    return _numberOfColors;
}

- (void)setNumberOfColors:(long)numberOfColors
{
    if(numberOfColors < 0)
    {
        numberOfColors =0;
    }
    
    _numberOfColors = numberOfColors;
}

- (NSString *)description {
    return [NSString stringWithFormat: @"Display: Size=%f Number of colors=%ld", self.size, self.numberOfColors];
}

@end