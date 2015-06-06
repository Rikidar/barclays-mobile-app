//
//  PaymentGateway.m
//  Barclays
//
//  Created by Groschovskiy Dmitriy on 05.06.15.
//  Copyright (c) 2015 Google Inc. All rights reserved.
//

#import "PaymentGateway.h"
#import <Parse/Parse.h>

@interface PaymentGateway ()

@end

@implementation PaymentGateway

- (void)viewDidLoad {
    [self authWithTouchID];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (void)authWithNFCDevice {
    
}

- (void)authWithTouchID {
    PFUser *user = [PFUser currentUser];
    PFQuery *query = [PFQuery queryWithClassName:@"BCAccounts"];
    [query whereKey:@"objectId" equalTo:user.objectId];
    query.limit = 1;
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            if (objects.count > 0) {
                PFObject *_user = [objects objectAtIndex:0];
                _nameLabel.text = [_user objectForKey:@"displayName"];
            }
        }
    }];
}

@end
