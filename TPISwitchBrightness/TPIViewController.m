//
//  TPIViewController.m
//  TPISwitchBrightness
//
//  Created by Doug2 on 6/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TPIViewController.h"

@interface TPIViewController ()

@end

@implementation TPIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
	
	if ([UIScreen mainScreen].brightness >= 0.5) {
		[[UIScreen mainScreen]setBrightness:0.0];
	} else {
		[[UIScreen mainScreen]setBrightness:1.0];
	}
	//// note slkjlaksjdfkla
	
	exit(0);

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
	    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
	} else {
	    return YES;
	}
}

@end
