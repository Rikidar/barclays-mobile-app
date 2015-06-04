//
//  RegistrationConsole.h
//  Barclays
//
//  Created by Groschovskiy Dmitriy on 04.06.15.
//  Copyright (c) 2015 Google Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistrationConsole : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *fullCustomerName;
@property (weak, nonatomic) IBOutlet UITextField *bankAccountNumber;

@end
