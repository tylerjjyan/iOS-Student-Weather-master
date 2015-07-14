//
//  CityViewController.m
//  Weather
//
//  Created by Tyler Yan on 2015-07-13.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailedViewController.h"

@interface CityViewController ()

@end

@implementation CityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

    

}

- (instancetype)initWithCity:(City*)city

{
    self = [super init];
    if (self) {
        _cityName = city;
        _title = city.name;
        _view.backgroundColor = [UIColor whiteColor];
        UILabel *weatherLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.center.x, self.view.center.y, 200, 50)];
        weatherLabel.text = city.weather;
        [self.view addSubview:weatherLabel];
        
    
        
        
        
        
    }
    return self;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
