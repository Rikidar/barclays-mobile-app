//
//  RegistrationConsole.m
//  Barclays
//
//  Created by Groschovskiy Dmitriy on 04.06.15.
//  Copyright (c) 2015 Google Inc. All rights reserved.
//

#import "RegistrationConsole.h"
#import <Parse/Parse.h>

@interface RegistrationConsole ()

@end

@implementation RegistrationConsole

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)registerWithCredentials:(id)sender {
    PFUser *user = [PFUser user];
    user.username = self.username.text;
    user.password = self.password.text;
    user.email = self.username.text;
    
    user[@"BANumber"] = self.bankAccountNumber.text;
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {   // Hooray! Let them use the app now.
        } else {   NSString *errorString = [error userInfo][@"error"];   // Show the errorString somewhere and let the user try again.
        }
    }];

}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    
    if (![[touch view] isKindOfClass:[UITextField class]]) {
        [self.view endEditing:YES];
    }
    [super touchesBegan:touches withEvent:event];
}

@end
