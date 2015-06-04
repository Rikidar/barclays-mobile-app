//
//  ViewController.m
//  Barclays
//
//  Created by Groschovskiy Dmitriy on 04.06.15.
//  Copyright (c) 2015 Google Inc. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    PFUser *currentUser = [PFUser currentUser];
    if (currentUser) {
        [self performSegueWithIdentifier:@"RegistrationConsole" sender:nil];
        NSLog(@"Authorized access!");
    } else {
        NSLog(@"Not authorized access!");
    }
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Button Action Event

- (IBAction)authWithCredentials:(id)sender {
    [PFUser logInWithUsernameInBackground:self.username.text password:self.password.text
                                    block:^(PFUser *user, NSError *error) {
                                        if (user) {
                                            [self performSegueWithIdentifier:@"authVision" sender:nil];
                                        } else {
                                            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Top Scan" message:@"Sorry. You enter incorrect account details or your account is not valid. Please check credentials and try again!" delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
                                            [alertView show];
                                        }
                                    }];
}

- (IBAction)authWithRegistration:(id)sender {
    
}

- (IBAction)authWithRecovery:(id)sender {
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    
    if (![[touch view] isKindOfClass:[UITextField class]]) {
        [self.view endEditing:YES];
    }
    [super touchesBegan:touches withEvent:event];
}

@end
