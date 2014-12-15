//
//  Weather.m
//  myFirstTry
//
//  Created by Мария on 01.11.14.
//  Copyright (c) 2014 Мария. All rights reserved.
//

#import "Weather.h"
#import "XMLParser.h"
//#import "Forecast.h"

@implementation Weather

- (id) initCountry: (NSString*) new_country andCity: (NSString*) new_city andLatitude: (NSNumber*) latit andLongitude: (NSNumber*) longit andForecast:(Forecast *)cast;
{
    self = [self init];
    country = [new_country copy];
    city = [new_city copy];
    longitude = [longit retain];
    latitude = [latit retain];
    myForecast = [cast retain];
    return self;
}

-(Forecast *) getForecast
{
    return myForecast;
}

+(void) loadFromFile: (NSString*) file target:(id) target selector:(SEL) selector
{
    NSData *databuffer = [NSData dataWithContentsOfFile:@"forecastSource.xml"];
    
    //databuffer = [filemgr contentsAtPath: @"forecastSource.xml" ];
    XMLParser *myParser = [[XMLParser alloc] init];
    Weather* myWeather = [myParser parseXMLFile:databuffer];
    [target performSelector: selector withObject:file];
    //return databuffer;
}

@end
