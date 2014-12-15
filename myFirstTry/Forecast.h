//
//  Forecast.h
//  myFirstTry
//
//  Created by Мария on 01.11.14.
//  Copyright (c) 2014 Мария. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Time.h"

@interface Forecast : NSObject
{
    NSDate *sunset;
    NSDate *sunrise;
    NSDate *begin;
    NSDate *end;
    NSMutableArray *_myTimes;
}

@property (nonatomic, readonly) NSMutableArray* times;

-(id) initSunset:(NSDate*) new_sunset andSunrise:(NSDate*) new_sunrise andBegin:(NSDate*) new_begin andEnd:(NSDate*) new_end andTimes:(NSMutableArray*)times;

-(NSMutableArray*) getTime;

@end
