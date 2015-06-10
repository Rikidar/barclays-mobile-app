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

@synthesize profileImage;

- (void)viewDidLoad {
    [self loadCustomerProfileImage];
    [super viewDidLoad];
  //  [self requestBallanceUpdateAction];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logOutEvent:(id)sender {
    [self prepareForSegue:@"homeScreen" sender:self];
    [PFUser logOutInBackground];
}

- (void)requestBallanceUpdateAction {
    PFUser *currentUser = [PFUser currentUser];
    PFQuery *query = [PFQuery queryWithClassName:@"BCAccounts"];
    [query getObjectInBackgroundWithId:@"ogZnUZutzQ" block:^(PFObject *customerEvent, NSError *error) {
        NSString *currentBallance = customerEvent[@"accountCredit"];
        NSLog(@"%@", customerEvent);
    }];
}

- (void)loadCustomerProfileImage {
    PFQuery *query = [PFQuery queryWithClassName:@"BCAccounts"];
    [query getObjectInBackgroundWithId:@"ogZnUZutzQ" block:^(PFObject *object, NSError *error) {
        NSLog(@"Retrieved data");
        //NSString *ballance = [@"£ %@", object[@"accountCredit"]];
        self.currentLocalBallance.text = object[@"accountCredit"];
        if (!error) {
            PFFile *file = [object objectForKey:@"customerImage"];
            [file getDataInBackgroundWithBlock:^(NSData *data, NSError *error) {
                if (!error) {
                    profileImage.image = [UIImage imageWithData:data];
                    self.profileImage.layer.cornerRadius = self.profileImage.frame.size.height/2;
                    self.profileImage.layer.masksToBounds = YES;
                    self.profileImage.layer.borderWidth = 0;
                }
            }];
        }
    }];
}

#pragma mark - Keyboard Hide Action

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    
    if (![[touch view] isKindOfClass:[UITextField class]]) {
        [self.view endEditing:YES];
    }
    [super touchesBegan:touches withEvent:event];
}

@end
