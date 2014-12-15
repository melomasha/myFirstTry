//
//  Downfall.h
//  myFirstTry
//
//  Created by Мария on 01.11.14.
//  Copyright (c) 2014 Мария. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Downfall : NSObject
{

NSString *type;
NSNumber *amount;
}

-(id) initType:(NSString*) myType andAmount:(NSNumber*) myNumber;
@end
