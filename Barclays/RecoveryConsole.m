//
//  RecoveryConsole.m
//  Barclays
//
//  Created by Groschovskiy Dmitriy on 04.06.15.
//  Copyright (c) 2015 Google Inc. All rights reserved.
//

#import "RecoveryConsole.h"
#import <Parse/Parse.h>

@interface RecoveryConsole ()

@end

@implementation RecoveryConsole

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Interface Action

- (IBAction)resetCustomerPassword:(id)sender {
    [PFUser requestPasswordResetForEmailInBackground:self.recoveryAddress.text];
    [self prepareForSegue:@"homeScreen" sender:nil];
}

#pragma mark - Hide Keyboard Action

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    
    if (![[touch view] isKindOfClass:[UITextField class]]) {
        [self.view endEditing:YES];
    }
    [super touchesBegan:touches withEvent:event];
}

@end
