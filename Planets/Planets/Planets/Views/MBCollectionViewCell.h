//
//  MBCollectionViewCell.h
//  Planets
//
//  Created by Mitchell Budge on 11/4/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBPlanet.h"

NS_ASSUME_NONNULL_BEGIN

@interface MBCollectionViewCell : UICollectionViewCell

@property MBPlanet *planet;

- (void)updateViews;

@end

NS_ASSUME_NONNULL_END
