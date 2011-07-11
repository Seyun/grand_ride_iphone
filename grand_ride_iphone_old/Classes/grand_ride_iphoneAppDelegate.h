//
//  grand_ride_iphoneAppDelegate.h
//  grand_ride_iphone
//
//  Created by Sean Choi on 11. 6. 14..
//  Copyright 2011 Initial Communications. All rights reserved.
//

#import <UIKit/UIKit.h>

@class grand_ride_iphoneViewController;

@interface grand_ride_iphoneAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    grand_ride_iphoneViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet grand_ride_iphoneViewController *viewController;

@end

