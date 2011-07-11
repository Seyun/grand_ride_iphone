//
//  GrandRideViewController.h
//  GrandRide
//
//  Created by Sean Choi on 11. 7. 11..
//  Copyright 2011 Initial Communications. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GrandRideViewController : UIViewController<UIWebViewDelegate> {
	IBOutlet UIWebView	*webView;
}
@property (nonatomic, retain) UIWebView	*webView;

@end

