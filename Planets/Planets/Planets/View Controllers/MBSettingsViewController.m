//
//  MBSettingsViewController.m
//  Planets
//
//  Created by Mitchell Budge on 11/4/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "MBSettingsViewController.h"

@interface MBSettingsViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *shouldShowPlutoSwitch;

@end

@implementation MBSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews {
    [self.shouldShowPlutoSwitch setOn: [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPluto"]];
}

- (IBAction)changeShouldShowPluto:(id)sender
{
    BOOL shouldShowPluto = self.shouldShowPlutoSwitch.isOn;
    [[NSUserDefaults standardUserDefaults] setBool:shouldShowPluto forKey:@"ShouldShowPluto"];
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
