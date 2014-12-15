//
//  ParserDelegate.h
//  myFirstTry
//
//  Created by Мария on 16.11.14.
//  Copyright (c) 2014 Мария. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weather.h"
#import "Forecast.h"
#import "Time.h"
#import "Downfall.h"
@interface XMLParser : NSObject<NSXMLParserDelegate>
{
    NSString* myCity;
    NSString* myCountry;
    NSNumber* myLatit;
    NSNumber* myLongit;
    NSDate* mySunrise;
    NSDate* mySunset;
    NSMutableArray* Times;
    NSDate* currentBegin;
    NSDate* currentEnd;
    Downfall* currentFalls;
    Weather* myWeather;
    NSString* currentDestiny;
    NSNumber* currentStrong;
    NSNumber* currentTemp;
    NSNumber* currentPress;
    NSNumber* currentWet;
    NSDate* myBegin;
    NSDate* myEnd;
    NSString *symbol;
    NSXMLParser *weatherParser;
}

-(Weather*)parseXMLFile:(NSData*) data;
-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName
namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
attributes:(NSDictionary *)attributeDict;

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName;

@end
