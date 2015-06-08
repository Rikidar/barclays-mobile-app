//
//  AboutApplication.m
//  Barclays
//
//  Created by Groschovskiy Dmitriy on 05.06.15.
//  Copyright (c) 2015 Google Inc. All rights reserved.
//

#import "AboutApplication.h"
#import <Parse/Parse.h>

@interface AboutApplication ()

@property (weak, nonatomic) IBOutlet UILabel *softwareVersion;

@end

@implementation AboutApplication

- (void)viewDidLoad {
    [self softwareVersion];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Software Version

- (void)currentSoftwareVersion {
    PFUser *currentUser = [PFUser currentUser];
    PFQuery *query = [PFQuery queryWithClassName:@"BCSoftware"];
    [query getObjectInBackgroundWithId:@"lTZvvgOSz4" block:^(PFObject *customerEvent, NSError *error) {
        self.softwareVersion.text = customerEvent[@"softwareRevision"];
        NSLog(@"%@", customerEvent);
    }];
}

@end
