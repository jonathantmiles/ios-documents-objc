//
//  JTMDocumentTableViewController.m
//  Documents-ObjC
//
//  Created by Jonathan T. Miles on 10/3/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

#import "JTMDocumentTableViewController.h"
#import "NSString+JTMWordCount.h"
#import "JTMDocument.h"
#import "JTMDocumentDetailViewController.h"

@interface JTMDocumentTableViewController ()

@end

@implementation JTMDocumentTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _documentController = [[JTMDocumentController alloc] init];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _documentController = [[JTMDocumentController alloc] init];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *string = @"Sample message for word count Category method";
    NSLog(@"%i", [string wordCount]);
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[[self documentController] documents] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    JTMDocument *document = [[[self documentController] documents] objectAtIndex:[indexPath row]];
    
    [[cell textLabel] setText:[document title]];
    [[cell detailTextLabel] setText: [NSString stringWithFormat:@"%i words", [document wordCount]]];
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    JTMDocumentDetailViewController *vc = [segue destinationViewController];
    [vc setDocumentController:[self documentController]];
    if ([[segue identifier]  isEqual: @"ShowDetail"]) {
        NSIndexPath *indexPath = [[self tableView] indexPathForSelectedRow];
        [vc setDocument:[[[self documentController] documents] objectAtIndex:[indexPath row]]];
    }
}

@end
