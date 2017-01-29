//
//  ARViewAppDelegate.h
//  ARView
//
//  Created by Alasdair Allan on 07/04/2010.
//  Copyright Babilim Light Industries 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootController;

@interface ARViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	RootController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RootController *viewController;

@end

