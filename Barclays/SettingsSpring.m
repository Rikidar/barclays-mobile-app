//
//  SettingsSpring.m
//  Barclays
//
//  Created by Groschovskiy Dmitriy on 05.06.15.
//  Copyright (c) 2015 Google Inc. All rights reserved.
//

#import "SettingsSpring.h"
#import <Parse/Parse.h>

@interface SettingsSpring ()

@end

@implementation SettingsSpring

- (void)viewDidLoad {
    [self showCustomerInformation];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showCustomerInformation {
    PFUser *currentUser = [PFUser currentUser];
    PFQuery *query = [PFQuery queryWithClassName:@"_User"];
    [query getObjectInBackgroundWithId:[PFUser currentUser] block:^(PFObject *customerEvent, NSError *error) {
        self.firstName.text = customerEvent[@"firstName"];
        self.lastName.text = customerEvent[@"lastName"];
        NSLog(@"%@", customerEvent);
    }];
}

#pragma mark - Show new UI controller

- (IBAction)abooutScreen:(id)sender {

}

@end
