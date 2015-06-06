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

@synthesize purchaseStore;

- (void)viewDidLoad {
    [self retrievingDataFromParse];
    [self transactionHistoryScheet];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Arguments for Parse backend

-(void)retrievingDataFromParse{
    PFQuery *query = [PFQuery queryWithClassName:@"BCTransactions"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            NSLog(@"Successfully retrieved %lu scores.", (unsigned long)objects.count);
            
            if (objects.count == 0) {
                NSString *objectError = @"There no object retrieved from Parse";
                [mutableArrayList addObject:mutableArrayList];
            } for (int i = 0; i < objects.count; i++) {
                objects = [objects objectAtIndex:i];
            }
        }
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return mutableArrayList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [mutableArrayList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    NSMutableDictionary *d=(NSMutableDictionary*)[mutableArrayList objectAtIndex:indexPath.row];
    cell.textLabel.text =[d valueForKey:@"callName"];
    
    [cell setAccessoryType: UITableViewCellAccessoryDisclosureIndicator];
    
    return cell;
}

#pragma mark - Logout Button Action

- (IBAction)closeCurrentConnection:(id)sender {
    
}

#pragma mark - Download Transaction History

- (void)transactionHistoryScheet {
    
}

@end
