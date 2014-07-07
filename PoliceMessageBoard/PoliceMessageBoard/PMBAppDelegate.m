//
//  PMBAppDelegate.m
//  PoliceMessageBoard
//
//  Created by jimzhai on 14-3-22.
//  Copyright (c) 2014年 zhaishuai. All rights reserved.
//

#import "PMBAppDelegate.h"
#import <unistd.h>

@implementation PMBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self initializeStoryBoardBasedOnScreenSize];
    sleep(2);
    return YES;
}

-(void)initializeStoryBoardBasedOnScreenSize {
    UIStoryboard *storyboard = nil;
    if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPhone)
    {    // The iOS device = iPhone or iPod Touch
        CGSize iOSDeviceScreenSize = [[UIScreen mainScreen] bounds].size;
        if (iOSDeviceScreenSize.height == 480)
        {   // iPhone 3GS, 4, and 4S and iPod Touch 3rd and 4th generation: 3.5 inch screen (diagonally measured)
            NSLog(@"Loading iphone 4 storyboard");
            // Instantiate a new storyboard object using the storyboard file named MainStoryboard_iPhone
            if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) {
                // Load resources for iOS 6.1 or earlier
                storyboard = [UIStoryboard storyboardWithName:@"Storyboard_iPhone4_IOS6" bundle:nil];
            } else {
                // Load resources for iOS 7 or later
                storyboard = [UIStoryboard storyboardWithName:@"Storyboard_iPhone4_IOS7" bundle:nil];
            }
        }
        if (iOSDeviceScreenSize.height == 568)
        {   // iPhone 5 and iPod Touch 5th generation: 4 inch screen (diagonally measured)
            NSLog(@"Loading iphone 5 storyboard");
            // Instantiate a new storyboard object using the storyboard file named Storyboard_iPhone4
            
            if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) {
                // Load resources for iOS 6.1 or earlier
                NSLog(@"Loading Storyboard_iPhone5_IOS6 storyboard");
                storyboard = [UIStoryboard storyboardWithName:@"Storyboard_iPhone5_IOS6" bundle:nil];
            } else {
                // Load resources for iOS 7 or later
                NSLog(@"Loading Storyboard_iPhone5_IOS7 storyboard");
                storyboard = [UIStoryboard storyboardWithName:@"Storyboard_iPhone5_IOS7" bundle:nil];
            }
        }
        
    } else if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad){
        // The iOS device = iPad
        NSLog(@"Loading ipad storyboard");
        // Instantiate a new storyboard object using the storyboard file named Storyboard_iPhone35
        storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPad" bundle:nil];
    }
    // Instantiate the initial view controller object from the storyboard
    UIViewController *initialViewController = [storyboard instantiateInitialViewController];
    
    // Instantiate a UIWindow object and initialize it with the screen size of the iOS device
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Set the initial view controller to be the root view controller of the window object
    self.window.rootViewController  = initialViewController;
    
    // Set the window object to be the key window and show it
    [self.window makeKeyAndVisible];
}



- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
