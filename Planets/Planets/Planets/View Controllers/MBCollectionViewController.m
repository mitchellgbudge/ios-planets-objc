//
//  MBCollectionViewController.m
//  Planets
//
//  Created by Mitchell Budge on 11/4/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MBCollectionViewController.h"
#import "MBPlanet.h"
#import "MBPlanetController.h"
#import "MBCollectionViewCell.h"

@interface MBCollectionViewController ()

@property MBPlanetController *planetController;
@property (nonatomic) NSArray *planets;

@end

@implementation MBCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _planetController = [[MBPlanetController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MBCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
    MBPlanet *planet = self.planets[indexPath.row];
    cell.planet = planet;
    [cell updateViews];
    return cell;
}

- (NSArray *)planets {
    BOOL shouldShowPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPluto"];
    if (shouldShowPluto) {
        return self.planetController.planets;
    } else {
        return self.planetController.planetsNoPluto;
    }
}

@end
