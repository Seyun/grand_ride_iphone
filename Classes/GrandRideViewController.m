//
//  GrandRideViewController.m
//  GrandRide
//
//  Created by Sean Choi on 11. 7. 11..
//  Copyright 2011 Initial Communications. All rights reserved.
//

#import "GrandRideViewController.h"

@implementation GrandRideViewController

@synthesize webView;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
  //  [super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {

}
- (void)viewWillAppear:(BOOL)animated {

	
	NSString *urlAddress = @"http://localhost:3000/rides/new";
	
	//Create a URL object.
	NSURL *url = [NSURL URLWithString:urlAddress];
	
	//URL Requst Object
	NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
	
	//Load the request in the UIWebView.
	[webView loadRequest:requestObj];
}


- (void)dealloc {
	[webView release];
    [super dealloc];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
	
	NSString *strUrl = [[request URL] absoluteString];
	if ([strUrl hasPrefix:@"toApp://"]) {
		NSString *strRequest = [[strUrl componentsSeparatedByString:@"://"] objectAtIndex:1];
		NSArray *arrRequest = [strRequest componentsSeparatedByString:@"?"];
		NSString *strCmd = [arrRequest objectAtIndex:0];
		
		if (YES == [@"toAppCmd" isEqualToString:strCmd]) {
			// code to set Your Application communication
//			self.txtFromWebView.text = [arrRequest objectAtIndex:1];
		}
		
		// toApp protocol do not StartLoad
		return NO;
	}
	
	// other protocol do StartLoad
	return YES;
}

@end
