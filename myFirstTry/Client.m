//
//  Client.m
//  myFirstTry
//
//  Created by Мария on 05.11.14.
//  Copyright (c) 2014 Мария. All rights reserved.
//

#import "Client.h"

@implementation Client
-(void) run
{
    [Weather loadFromFile: @"forecastSource.xml" target: self selector: @selector(fileLoaded: )];
    
}
-(void) fileLoaded: (NSString*) file
{
	NSLog(@"file: %@ loaded", file);
}
 
@end
