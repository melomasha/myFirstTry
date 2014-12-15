//
//  Weather.h
//  myFirstTry
//
//  Created by Мария on 01.11.14.
//  Copyright (c) 2014 Мария. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Forecast.h"

@class XMLParser;

@interface Weather : NSObject
{
    NSString *country;
    NSString *city;
    NSNumber *latitude;
    NSNumber *longitude;
    Forecast *myForecast;
    id target;
    SEL callback;
}
- (id) initCountry: (NSString*) new_country andCity: (NSString*) new_city andLatitude: (NSNumber*) latit andLongitude: (NSNumber*) longit andForecast:(Forecast*) myForecast;
-(Forecast *) getForecast;

+(void) loadFromFile:(NSString*) file target:(id) target selector:(SEL) selector;

@end
