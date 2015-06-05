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
    PFUser *currentUser = [PFUser currentUser];
    PFQuery *query = [PFQuery queryWithClassName:@"_Users"];
}

@end
