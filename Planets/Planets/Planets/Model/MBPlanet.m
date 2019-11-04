//
//  MBPlanet.m
//  Planets
//
//  Created by Mitchell Budge on 11/4/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MBPlanet.h"

@implementation MBPlanet

- (instancetype)initWithName:(NSString *)planetName imageName:(NSString *)planetImage
{
    self = [super init];
    if (self) {
        _planetName = [planetName copy];
        _planetImage = [UIImage imageNamed:planetImage];
    }
    return self;
}

@end
