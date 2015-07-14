//
//  City.h
//  Weather
//
//  Created by Tyler Yan on 2015-07-13.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic) NSString *weather;
@property (nonatomic) NSString *precipitation;
@property (nonatomic) NSString *humidity;
@property (nonatomic) NSString *name;

- (instancetype)initWithName:(NSString*)name withWeather:(NSString*)weather withHumidity:(NSString*)humidity withPrecipitation:(NSString*)precipitation;

@end
