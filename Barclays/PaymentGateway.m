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
    //[self authWithTouchID];
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
    PFQuery *query = [PFQuery queryWithClassName:@"BCCreditCard"];
    [query getObjectInBackgroundWithId:[query whereKey:@"creditCardPointer" equalTo:[PFUser currentUser].username] block:^(PFObject *creditCardTransfer, NSError *error) {
        self.cardNumber.text = creditCardTransfer[@"creditCardNumber"];
        self.cardHolder.text = creditCardTransfer[@"creditCardHolder"];
        self.cardExpire.text = creditCardTransfer[@"creditCardExpire"];
        NSLog(@"%@", creditCardTransfer);
    }];
}

@end
