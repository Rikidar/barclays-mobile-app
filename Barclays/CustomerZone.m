//
//  CustomerZone.m
//  Barclays
//
//  Created by Groschovskiy Dmitriy on 04.06.15.
//  Copyright (c) 2015 Google Inc. All rights reserved.
//

#import "CustomerZone.h"
#import <Parse/Parse.h>

@interface CustomerZone ()

@end

@implementation CustomerZone

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logOutEvent:(id)sender {
    [PFUser logOut];
    PFUser *currentUser = [PFUser currentUser];
    [self prepareForSegue:@"authScreen" sender:nil];
}

- (void)requestBallanceUpdateAction {
    PFUser *currentUser = [PFUser currentUser];
    PFQuery *query = [PFQuery queryWithClassName:@"BCAccounts"];
    [query getObjectInBackgroundWithId:@"ffff" block:^(PFObject *customerEvent, NSError *error) {
        // Do something with the returned PFObject in the gameScore variable.
        NSLog(@"%@", customerEvent);
    }];
}

- (void)requestWithObject {
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    
    if (![[touch view] isKindOfClass:[UITextField class]]) {
        [self.view endEditing:YES];
    }
    [super touchesBegan:touches withEvent:event];
}

@end
