//
//  Downfall.m
//  myFirstTry
//
//  Created by Мария on 01.11.14.
//  Copyright (c) 2014 Мария. All rights reserved.
//

#import "Downfall.h"

@implementation Downfall

-(id) initType:(NSString *)myType andAmount:(NSNumber *)myNumber
{
    self = [self init];
    type = [myType copy];
    amount = [myNumber retain];
    return self;
}

@end
