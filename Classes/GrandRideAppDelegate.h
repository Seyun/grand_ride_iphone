//
//  GrandRideAppDelegate.h
//  GrandRide
//
//  Created by Sean Choi on 11. 7. 11..
//  Copyright 2011 Initial Communications. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GrandRideViewController;

@interface GrandRideAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GrandRideViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GrandRideViewController *viewController;

@end

