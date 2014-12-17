//
//  UIView.m
//  myFirstTry
//
//  Created by Мария on 03.12.14.
//  Copyright (c) 2014 Мария. All rights reserved.
//

#import "ForecastTimeViewController.h"
#import <UIKit/UIKit.h>
#import "Time.h"
#import "Forecast.h"

@implementation ForecastTimeViewController
{
    UIImageView* _imageView;
    UILabel* _titleView;
    UITextField* _textView;
    Forecast* itForecast;
    NSMutableArray* itTimes;
}

@synthesize ImageView = _imageView;
@synthesize TitleView = _titleView;
@synthesize TextView = _textView;
//@synthesize DescriptionView = _descriptionView;

-( id ) initWithNibName: ( NSString* )nibNameOrNil bundle: ( NSBundle* )nibBundleOrNil
{
    self = [ super initWithNibName: nibNameOrNil bundle: nibBundleOrNil ];
    
    if ( nil != self )
    {
    }
    
    return self;
}

-( void ) dealloc
{
    [ _imageView release ];
    [ _titleView release ];

    [ super dealloc ];
}

-( void ) viewDidLoad
{
    [ super viewDidLoad ];

}

-( void ) didReceiveMemoryWarning
{
    [ super didReceiveMemoryWarning ];
}

-(void) setForecast:(Forecast *)myForecast
{
    itForecast = [ myForecast copy];
    itTimes = [myForecast.times copy];
    //Time* myTime = [itTimes[1] retain];
    NSString* imageURL = [NSString stringWithFormat:@"http://openweathermap.org/weather-conditions/img/w/%@.png", ((Time*)[itTimes objectAtIndex:1]).symbol];
    NSURL* images = [[NSURL alloc] initWithString:imageURL];
    NSData *imageData = [[NSData alloc] initWithContentsOfURL:images];
    UIImage* image = [[UIImage alloc] initWithData:imageData];
    _imageView.image = image;
    _titleView.text = @"Yekaterinburg";
    _textView.text = [NSString stringWithFormat:@"temperature: %@, wind destiny: %@", ((Time*)[itTimes objectAtIndex:1]).temperature, ((Time*)[itTimes objectAtIndex:1]).windDestiny];
}

@end
