//
//  ARViewAppDelegate.m
//  ARView
//
//  Created by Alasdair Allan on 07/04/2010.
//  Copyright Babilim Light Industries 2010. All rights reserved.
//

#import "ARViewAppDelegate.h"
#import "RootController.h"

@implementation ARViewAppDelegate

@synthesize window;
@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
	
   self.viewController = [[RootController alloc] init];
   [window addSubview:[viewController view]];
   [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
