//
//  Time.h
//  myFirstTry
//
//  Created by Мария on 01.11.14.
//  Copyright (c) 2014 Мария. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Downfall.h"


@interface Time : NSObject
{
    NSDate *_begin;
    NSDate *_end;
    Downfall *fallout;
    NSString *windDestiny;
    NSNumber *windStrong;
    NSNumber *temperature;
    NSNumber *pressure;
    NSNumber *wet;
    NSString *_symbol;
}

@property (nonatomic, readonly) NSString* symbol;
@property (nonatomic, readonly) NSDate* begin;
@property (nonatomic, readonly) NSDate* end;

-(id) initBegin:(NSDate*) myBegin andEnd:(NSDate*) myEnd andDownfall:(Downfall*) myFallout andWindDestiny:(NSString*) myDestiny andWindStrong:(NSNumber*) myStrong andTemper:(NSNumber*) myTemper andPressure:(NSNumber*) myPressure andWet:(NSNumber*) myWet andSymbol:(NSString*) mySymbol;

@end
