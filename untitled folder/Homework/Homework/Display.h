//
//  Display.h
//  Homework
//
//  Created by Konstantina on 1/25/16.
//  Copyright © 2016 Konstantina. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Display : NSObject

@property  double size;
@property long numberOfColors;

-(instancetype) initWithSize: (double) size
                     andNumberOfColors: (long) numberOfColors;

-(instancetype) init;

- (NSString *)description ;

@end

