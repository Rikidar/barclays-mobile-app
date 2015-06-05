//
//  TransactionList.h
//  Barclays
//
//  Created by Groschovskiy Dmitriy on 05.06.15.
//  Copyright (c) 2015 Google Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TransactionList : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *purchaseStore;
@property (weak, nonatomic) IBOutlet UILabel *purchaseDate;
@property (weak, nonatomic) IBOutlet UILabel *purchaseTime;
@property (weak, nonatomic) IBOutlet UILabel *purchaseCost;

@end
