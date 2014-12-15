//
//  Forecast.m
//  myFirstTry
//
//  Created by Мария on 01.11.14.
//  Copyright (c) 2014 Мария. All rights reserved.
//

#import "Forecast.h"

@implementation Forecast

//@synthesize Times = _myTimes;

-(Forecast*) initSunset:(NSDate*) new_sunset andSunrise:(NSDate*) new_sunrise andBegin:(NSDate*) new_begin andEnd:(NSDate*) new_end andTimes:(NSMutableArray *)times
{
    self = [self init];
    sunset = [new_sunset retain];
    sunrise = [new_sunrise retain];
    begin = [new_begin copy];
    end = [new_end copy];
    _myTimes = [times retain];
    return self;
}
@synthesize times = _myTimes;

-(NSMutableArray*) getTime
{
    return _myTimes;
}



@end
