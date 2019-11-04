//
//  MBPlanet.h
//  Planets
//
//  Created by Mitchell Budge on 11/4/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MBPlanet : NSObject

@property NSString *planetName;
@property UIImage *planetImage;

- (instancetype)initWithName:(NSString *)planetName imageName:(NSString *)planetImage;

@end

NS_ASSUME_NONNULL_END
