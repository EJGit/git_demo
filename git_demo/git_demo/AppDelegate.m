//
//  AppDelegate.m
//  git_demo
//
//  Created by Janicevs, Edgars on 1/6/15.
//  Copyright (c) 2015 EdgarYanichev. All rights reserved.
//

#import "AppDelegate.h"
#import "Triangle.h"
#import "Square.h"
#import "AccItem.h"
#import <CoreLocation/CoreLocation.h>

@interface AppDelegate ()



@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

//    Triangle *triangle = [Triangle new];
//    Square *square = [Square new];
//    triangle.side = 2.f;
//    square.side = 2.f;
//    float result = [square estimateArea];
//    NSLog(@"%f",result);
//    result = [triangle estimateArea];
//    NSLog(@"%f",result);

    //BNR silver task (58)
    NSMutableArray *itemContainer = [NSMutableArray new];
    [self fillItemContainer:itemContainer withItemCount:5];
    AccItem *item = [[AccItem alloc] initWithName:@"'item name'" ID:@"'item id'" Value:1024];
    NSLog(@"Nr. : %d   Item Name : %@    Item ID : %@   Item Value : %d", 0, [item itemName],
          [item itemID], [item getItemValue]);
  
    
    
    return YES;
}

- (void) fillItemContainer:(NSMutableArray *)container withItemCount:(int)count
{
    for (int i=0; i<count; i++) {
        [container addObject: [[AccItem alloc] init]];
        [[container objectAtIndex:i] setItemName:[NSString stringWithFormat:@"%c",
                                                  arc4random_uniform(26) + 'a']];
        [[container objectAtIndex:i] setItemID:[NSString stringWithFormat:@"%c",
                                                arc4random_uniform(26) + 'a']];

        [[container objectAtIndex:i] setItemValue:arc4random_uniform(1000)];
        NSLog(@"Nr. : %d   Item Name : %@    Item ID : %@   Item Value : %d", i+1, [[container objectAtIndex:i] itemName],
              [[container objectAtIndex:i] itemID], [[container objectAtIndex:i]getItemValue]);
    }
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
