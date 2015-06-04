//
//  CustomerZone.h
//  Barclays
//
//  Created by Groschovskiy Dmitriy on 04.06.15.
//  Copyright (c) 2015 Google Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomerZone : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *currentLocalBallance;
@property (weak, nonatomic) IBOutlet UILabel *currentIntlBallance;

@end
