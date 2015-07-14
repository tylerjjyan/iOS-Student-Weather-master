//
//  City.m
//  Weather
//
//  Created by Tyler Yan on 2015-07-13.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

- (instancetype)initWithName:(NSString*)name withWeather:(NSString*)weather withHumidity:(NSString*)humidity withPrecipitation:(NSString*)precipitation
{
    self = [super init];
    if (self) {
        _weather = weather;
        _name = name;
        _humidity = humidity;
        _precipitation = precipitation;
    }
    return self;
}

@end
