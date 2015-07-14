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
        self.cityName = city;
        self.title = city.name;
        self.view.backgroundColor = [UIColor whiteColor];
        UILabel *weatherLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width /2.2, self.view.frame.size.height / 2, 150, 50)];
        weatherLabel.text = city.weather;
        [self.view addSubview:weatherLabel];
        
    
        UIBarButtonItem *detailedButton = [[UIBarButtonItem alloc] initWithTitle:@"Details" style:UIBarButtonItemStyleBordered target:self action:@selector(showWeatherDetails)];
        
        self.navigationItem.rightBarButtonItem = detailedButton;
        
    }
    return self;
}


-(void)showWeatherDetails{
    DetailedViewController *detailedViewController = [[DetailedViewController alloc] init];
    detailedViewController.city = self.cityName;
    [self showViewController:detailedViewController sender:self];
    
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
