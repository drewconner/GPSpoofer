//
//  ViewController.m
//  GPSpoofer
//
//  Created by Drew Conner on 7/10/16.
//  Copyright © 2016 return7. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController () <CLLocationManagerDelegate>

@property (nonatomic, strong) CLLocationManager *locationManager;

@end

@implementation ViewController

- (CLLocationManager *)locationManager {
	if (_locationManager == nil) {
		_locationManager = [[CLLocationManager alloc] init];
		_locationManager.delegate = self;
		_locationManager.desiredAccuracy = kCLLocationAccuracyBest;
	}
	
	return _locationManager;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
