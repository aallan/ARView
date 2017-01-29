//
//  RootController.m
//  ARView
//
//  Created by Alasdair Allan on 07/04/2010.
//  Copyright 2010 Babilim Light Industries. All rights reserved.
//

#import "RootController.h"
#import "ARController.h"
#import "ARGeoCoordinate.h"

@implementation RootController

@synthesize arController;

- (void)loadView {
	self.arController = [[ARController alloc] initWithViewController:self];

	ARGeoCoordinate *tempCoordinate;
	CLLocation		*tempLocation;

	tempLocation = [[CLLocation alloc] initWithLatitude:39.550051 longitude:-105.782067];
    tempCoordinate = [[ARGeoCoordinate alloc] initWithCoordiante:tempLocation andTitle:@"Denver"];
	[self.arController addCoordinate:tempCoordinate animated:NO];
	[tempLocation release];
	
	tempLocation = [[CLLocation alloc] initWithLatitude:45.523875 longitude:-122.670399];
    tempCoordinate = [[ARGeoCoordinate alloc] initWithCoordiante:tempLocation andTitle:@"Portland"];
	[self.arController addCoordinate:tempCoordinate animated:NO];
	[tempLocation release];
	
	tempLocation = [[CLLocation alloc] initWithLatitude:41.879535 longitude:-87.624333];
    tempCoordinate = [[ARGeoCoordinate alloc] initWithCoordiante:tempLocation andTitle:@"Chicago"];
	[self.arController addCoordinate:tempCoordinate animated:NO];
	[tempLocation release];
	
	tempLocation = [[CLLocation alloc] initWithLatitude:30.268735 longitude:-97.745209];
    tempCoordinate = [[ARGeoCoordinate alloc] initWithCoordiante:tempLocation andTitle:@"Austin"];
	[self.arController addCoordinate:tempCoordinate animated:NO];
	[tempLocation release];

    tempLocation = [[CLLocation alloc] initWithLatitude:51.500152 longitude:-0.126236];
    tempCoordinate = [[ARGeoCoordinate alloc] initWithCoordiante:tempLocation andTitle:@"London"];
	tempCoordinate.coordinateInclination = M_PI/30;
	[self.arController addCoordinate:tempCoordinate animated:NO];
	[tempLocation release];

	tempLocation = [[CLLocation alloc] initWithLatitude:48.856667 longitude:2.350987];
    tempCoordinate = [[ARGeoCoordinate alloc] initWithCoordiante:tempLocation andTitle:@"Paris"];
	tempCoordinate.coordinateInclination = M_PI/30;
	[self.arController addCoordinate:tempCoordinate animated:NO];
	[tempLocation release];
	
	tempLocation = [[CLLocation alloc] initWithLatitude:55.676294 longitude:12.568116];
    tempCoordinate = [[ARGeoCoordinate alloc] initWithCoordiante:tempLocation andTitle:@"Copenhagen"];
	tempCoordinate.coordinateInclination = M_PI/30;
	[self.arController addCoordinate:tempCoordinate animated:NO];
	[tempLocation release];
	
	tempLocation = [[CLLocation alloc] initWithLatitude:52.373801 longitude:4.890935];
    tempCoordinate = [[ARGeoCoordinate alloc] initWithCoordiante:tempLocation andTitle:@"Amsterdam"];
	tempCoordinate.coordinateInclination = M_PI/30;
	[self.arController addCoordinate:tempCoordinate animated:NO];
	[tempLocation release];
	
	tempLocation = [[CLLocation alloc] initWithLatitude:19.611544 longitude:-155.665283];
    tempCoordinate = [[ARGeoCoordinate alloc] initWithCoordiante:tempLocation andTitle:@"Hawaii"];

	tempCoordinate.coordinateInclination = M_PI/30;
	[self.arController addCoordinate:tempCoordinate animated:NO];
	[tempLocation release];
	
	tempLocation = [[CLLocation alloc] initWithLatitude:-40.900557 longitude:174.885971];
    tempCoordinate = [[ARGeoCoordinate alloc] initWithCoordiante:tempLocation andTitle:@"New Zealand"];
	tempCoordinate.coordinateInclination = M_PI/40;
	[self.arController addCoordinate:tempCoordinate animated:NO];
	[tempLocation release];	

}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	[self.arController presentModalARControllerAnimated:NO];
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
	[arController release];
    [super dealloc];
}


@end
