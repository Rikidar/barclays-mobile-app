//
//  TransactionList.m
//  Barclays
//
//  Created by Groschovskiy Dmitriy on 05.06.15.
//  Copyright (c) 2015 Google Inc. All rights reserved.
//

#import "TransactionList.h"
#import <Parse/Parse.h>

@interface TransactionList ()

@property (weak, nonatomic) IBOutlet UITableView *transactionList;
@property (weak, nonatomic) IBOutlet UITableViewCell *transactionItem;

@end

@implementation TransactionList {
    NSMutableArray *mutableArrayList;
    NSArray *arrayList;
}

- (void)viewDidLoad {
    [self transactionHistoryScheet];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Logout Button Action

- (IBAction)closeCurrentConnection:(id)sender {
    
}

#pragma mark - Download Transaction History

- (void)transactionHistoryScheet {
    
}

@end
