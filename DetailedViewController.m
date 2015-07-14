//
//  DetailedViewController.m
//  Weather
//
//  Created by Tyler Yan on 2015-07-13.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"

@interface DetailedViewController ()


@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *weatherLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width /2.2, 100, 150, 50)];
    UILabel *humidityLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width /2.2, 150, 150, 50)];
    UILabel *precipitationLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width /2.2, 200, 150, 50)];
    
    weatherLabel.text = self.city.weather;
    humidityLabel.text = self.city.humidity;
    precipitationLabel.text = self.city.precipitation;
    
    [self.view addSubview:weatherLabel];
    [self.view addSubview:humidityLabel];
    [self.view addSubview:precipitationLabel];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
