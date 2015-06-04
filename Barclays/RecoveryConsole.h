//
//  RecoveryConsole.h
//  Barclays
//
//  Created by Groschovskiy Dmitriy on 04.06.15.
//  Copyright (c) 2015 Google Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecoveryConsole : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *customerName;
@property (weak, nonatomic) IBOutlet UITextField *recoveryAddress;
@property (weak, nonatomic) IBOutlet UITextField *bankAccountNumber;

@end
