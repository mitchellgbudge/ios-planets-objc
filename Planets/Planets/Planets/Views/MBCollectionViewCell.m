//
//  MBCollectionViewCell.m
//  Planets
//
//  Created by Mitchell Budge on 11/4/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MBCollectionViewCell.h"

@interface MBCollectionViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation MBCollectionViewCell

- (void)updateViews {
    if (self.planet) {
        self.imageView.image = self.planet.planetImage;
        self.nameLabel.text = self.planet.planetName;
    }
}

@end
