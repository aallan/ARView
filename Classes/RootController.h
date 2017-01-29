//
//  RootController.h
//  ARView
//
//  Created by Alasdair Allan on 07/04/2010.
//  Copyright 2010 Babilim Light Industries. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ARController;

@interface RootController : UIViewController {
	ARController *arController;
}

@property (nonatomic, retain) ARController *arController;

@end
