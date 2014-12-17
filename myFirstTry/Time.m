//
//  Time.m
//  myFirstTry
//
//  Created by Мария on 01.11.14.
//  Copyright (c) 2014 Мария. All rights reserved.
//

#import "Time.h"

@implementation Time

@synthesize symbol = _symbol;
@synthesize end = _end;
@synthesize begin = _begin;
@synthesize temperature = _temperature;
@synthesize windDestiny = _windDestiny;

-(Time*) initBegin:(NSDate*) myBegin andEnd:(NSDate*) myEnd andDownfall:(Downfall*) myFallout andWindDestiny:(NSString*) myDestiny andWindStrong:(NSNumber*) myStrong andTemper:(NSNumber*) myTemper andPressure:(NSNumber*) myPressure andWet:(NSNumber*) myWet andSymbol: (NSString*) mySymbol
{
    self = [self init];
    _begin = [myBegin retain];
    _end = [myEnd retain];
    fallout = [myFallout copy];
    _windDestiny = [myDestiny copy];
    windStrong = [myStrong retain];
    _temperature = [myTemper retain];
    pressure = [myPressure retain];
    wet = [myWet retain];
    _symbol = [mySymbol copy];
    return self;
}

@end
