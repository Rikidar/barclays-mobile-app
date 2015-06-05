//
//  PaymentGateway.h
//  Barclays
//
//  Created by Groschovskiy Dmitriy on 05.06.15.
//  Copyright (c) 2015 Google Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaymentGateway : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *cardNumber;
@property (weak, nonatomic) IBOutlet UILabel *cardHolder;
@property (weak, nonatomic) IBOutlet UILabel *cardExpire;

@property (weak, nonatomic) IBOutlet UIImageView *paymentAccess;

@end
