//
//  UIView.h
//  myFirstTry
//
//  Created by Мария on 03.12.14.
//  Copyright (c) 2014 Мария. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class Forecast;
@class Time;
@interface ForecastTimeViewController : UIViewController

@property ( nonatomic, retain ) IBOutlet UIImageView* ImageView;
@property ( nonatomic, retain ) IBOutlet UILabel* TitleView;
//@property ( nonatomic, retain ) IBOutlet UIWebView* DescriptionView;

-( void ) setForecast: (Forecast*) myForecast;
-( id ) initWithNibName: ( NSString* )nibNameOrNil bundle: ( NSBundle* )nibBundleOrNil;
-( void ) viewDidLoad;
-( void ) didReceiveMemoryWarning;
-( void ) dealloc;

@end
