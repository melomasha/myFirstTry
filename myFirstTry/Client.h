//
//  Client.h
//  myFirstTry
//
//  Created by Мария on 05.11.14.
//  Copyright (c) 2014 Мария. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weather.h"
#import "Forecast.h"

@interface Client : NSObject

-(void) run;
-(void) fileLoaded: (NSString*) file;
@end
