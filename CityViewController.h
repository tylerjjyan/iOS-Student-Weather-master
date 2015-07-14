//
//  CityViewController.h
//  Weather
//
//  Created by Tyler Yan on 2015-07-13.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface CityViewController : UIViewController

@property (nonatomic) City *cityName;

- (instancetype)initWithCity:(City*)city;



@end
