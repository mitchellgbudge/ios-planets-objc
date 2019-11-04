//
//  MBPlanetController.m
//  Planets
//
//  Created by Mitchell Budge on 11/4/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MBPlanetController.h"
#import "MBPlanet.h"

@implementation MBPlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _planetsNoPluto = @[[[MBPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                                 [[MBPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
                                 [[MBPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
                                 [[MBPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
                                 [[MBPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                                 [[MBPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                                 [[MBPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                                 [[MBPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"]];
        
        _planets = @[[[MBPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                              [[MBPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
                              [[MBPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
                              [[MBPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
                              [[MBPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                              [[MBPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                              [[MBPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                              [[MBPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"],
                              [[MBPlanet alloc] initWithName:@"Pluto" imageName:@"pluto"]];
    }
    return self;
}


@end
