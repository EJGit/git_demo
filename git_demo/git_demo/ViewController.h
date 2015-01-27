//
//  ViewController.h
//  git_demo
//
//  Created by Janicevs, Edgars on 1/6/15.
//  Copyright (c) 2015 EdgarYanichev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
@interface ViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}


@end

