//
//  ParserDelegate.m
//  myFirstTry
//
//  Created by Мария on 16.11.14.
//  Copyright (c) 2014 Мария. All rights reserved.
//

#import "XMLParser.h"
#import "Weather.h"
#import "Forecast.h"
#import "Time.h"
#import "Downfall.h"
#import <Foundation/Foundation.h>

@implementation XMLParser

-(void) dealloc
{
    [myWeather release];
    [myCity release];
    [myCountry release];
    [myLatit release];
    [myLongit release];
    [mySunrise release];
    [mySunset release];
    [Times release];
    [currentBegin release];
    [currentEnd release];
    [currentFalls release];
    [currentDestiny release];
    [currentStrong release];
    [currentTemp release];
    [currentPress release];
    [currentWet release];
    [myBegin release];
    [myEnd release];
    [weatherParser release];
    [symbol release];
    [super dealloc];
}

-(Weather*)parseXMLFile:(NSData*) data
{
    BOOL success;
    //NSURL *xmlURL = [NSURL fileURLWithPath:pathToFile];
    weatherParser = [[NSXMLParser alloc] initWithData: data];
    [weatherParser setDelegate:self];
    [weatherParser setShouldResolveExternalEntities:YES];
    success = [weatherParser parse]; // return value not used
    return myWeather;
}
// if not successful, delegate is informed of error

-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName
 namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
   attributes:(NSDictionary *)attributeDict
{
    //NSDate *currentBegin = [[NSDate alloc] init];
    if ( [elementName isEqualToString:@"weatherdata"]) {
        // addresses is an NSMutableArray instance variable
            Weather *myWeather = [[Weather alloc] init];
        return; }
    if ( [elementName isEqualToString:@"name"] ) {
        // currentPerson is an ABPerson instance variable
        myCity = [NSString new];
        return;
    }
    if ( [elementName isEqualToString:@"country"] ) {
        myCountry = [NSString new];
        return;
    }
    if ( [elementName isEqualToString:@"location"] ) {
        myLongit = [attributeDict objectForKey:@"longitude"];
        myLatit = [attributeDict objectForKey:@"latitude"];
        return;
    }
    if ( [elementName isEqualToString:@"sun"] ) {
        mySunset = [attributeDict objectForKey:@"set"];
        mySunrise = [attributeDict objectForKey:@"rise"];
        return;
    }
    if ( [elementName isEqualToString:@"forecast"] ) {
        Times = [[NSMutableArray alloc] init];
        return;
    }
    if ( [elementName isEqualToString:@"time"] ) {
        currentBegin = [attributeDict objectForKey:@"from"];
        currentEnd = [attributeDict objectForKey:@"to"];
        if (!myBegin)
            myBegin = currentBegin;
        myEnd = currentEnd;
        return;
    }
    if ( [elementName isEqualToString:@"precipitetion"] ) {
        NSString *myType = [attributeDict objectForKey:@"type"];
        NSNumber *myAmount = [attributeDict objectForKey:@"value"];
        currentFalls = [[Downfall alloc] initType:myType andAmount: myAmount];
        return;
    }
    if ( [elementName isEqualToString:@"windDirection"] ) {
        currentDestiny = [attributeDict objectForKey:@"code"];
        return;
    }
    if ( [elementName isEqualToString:@"windSpeed"] ) {
        currentStrong = [attributeDict objectForKey:@"mps"];
        return;
    }
    if ( [elementName isEqualToString:@"temperature"] ) {
        currentTemp = [attributeDict objectForKey:@"value"];
        return;
    }
    if ( [elementName isEqualToString:@"pressure"] ) {
        currentPress = [attributeDict objectForKey:@"value"];
        return;
    }
    if ( [elementName isEqualToString:@"humidity"] ) {
        currentWet = [attributeDict objectForKey:@"value"];
        return;
    }
    if ( [elementName isEqualToString:@"symbol"] ) {
        symbol = [attributeDict objectForKey:@"var"];
        return;
    }


}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
  
    if ( [elementName isEqualToString:@"forecast"] ) {
        Forecast* myForecast = [[Forecast alloc] initSunset:mySunset andSunrise:mySunrise andBegin:myBegin andEnd:myEnd andTimes:Times];
        Weather* myWeather = [[Weather alloc] initCountry:myCountry andCity:myCity andLatitude:myLatit andLongitude:myLongit andForecast:myForecast];
        return;
    }
    if ( [elementName isEqualToString:@"time"] ) {
        Time *currentTime = [[Time alloc] initBegin:currentBegin andEnd:currentEnd andDownfall:currentFalls andWindDestiny:currentDestiny andWindStrong:currentStrong andTemper:currentTemp andPressure:currentPress andWet:currentWet andSymbol:symbol];
        [Times addObject:currentTime];
        return;
    }
    if ( [elementName isEqualToString:@"precipitetion"] ) {
        return;
    }
    if ( [elementName isEqualToString:@"windDirection"] ) {
        return;
    }
    if ( [elementName isEqualToString:@"windSpeed"] ) {
        return;
    }
    if ( [elementName isEqualToString:@"temperature"] ) {
        return;
    }
    if ( [elementName isEqualToString:@"pressure"] ) {
        return;
    }
    if ( [elementName isEqualToString:@"humidity"] ) {
        return;
    }
}
@end
