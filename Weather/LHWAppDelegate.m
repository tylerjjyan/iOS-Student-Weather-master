//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"

@implementation LHWAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    City *Vancouver = [[City alloc] initWithName:@"Vancouver" withWeather:@"Rain" withHumidity:@"Humidity: 55%"  withPrecipitation:@"Precipitation: 20%"];
    City *Edmonton = [[City alloc] initWithName:@"Edmonton" withWeather:@"Cloudy" withHumidity:@"Humidity: 59%"  withPrecipitation:@"Precipitation: 30%"];
    City *Calgary = [[City alloc] initWithName:@"Calgary" withWeather:@"Sunny" withHumidity:@"Humidity: 60%"  withPrecipitation:@"Precipitation: 32%"];
    City *Montreal = [[City alloc] initWithName:@"Montreal" withWeather:@"Rain" withHumidity:@"Humidity: 40%"  withPrecipitation:@"Precipitation: 45%"];
    City *Toronto = [[City alloc] initWithName:@"Toronto" withWeather:@"Smoke" withHumidity:@"Humidity: 46%"  withPrecipitation:@"Precipitation: 37%"];
    
    self.window = [[UIWindow alloc] init];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
   
    CityViewController *vancouverVC = [[CityViewController alloc] initWithCity:Vancouver];
    CityViewController *edmontonVC = [[CityViewController alloc] initWithCity:Edmonton];
    CityViewController *calgaryVC = [[CityViewController alloc] initWithCity:Calgary];
    CityViewController *montrealVC = [[CityViewController alloc] initWithCity:Montreal];
    CityViewController *torontoVC = [[CityViewController alloc] initWithCity:Toronto];
    
    UINavigationController *vancouverNC = [[UINavigationController alloc] initWithRootViewController:vancouverVC];
    UINavigationController *edmontonNC = [[UINavigationController alloc] initWithRootViewController:edmontonVC];
    UINavigationController *calgaryNC = [[UINavigationController alloc] initWithRootViewController:calgaryVC];
    UINavigationController *montrealNC = [[UINavigationController alloc] initWithRootViewController:montrealVC];
    UINavigationController *torontoNC = [[UINavigationController alloc] initWithRootViewController:torontoVC];
    
    NSArray* controllers = @[
                             vancouverNC,
                             edmontonNC,
                             calgaryNC,
                             montrealNC,
                             torontoNC
                             ];
      
    [tabBarController setViewControllers:controllers];
    
    [self.window setRootViewController:tabBarController];
    [self.window makeKeyAndVisible];
    
    return YES;
}



@end
