//
//  JTMDocumentDetailViewController.m
//  Documents-ObjC
//
//  Created by Jonathan T. Miles on 10/3/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

#import "JTMDocumentDetailViewController.h"

@interface JTMDocumentDetailViewController ()

@end

@implementation JTMDocumentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[[self documentBody] delegate] self];
    [self textViewDidChange:[self documentBody]];
    [self updateViews];
}

- (void)updateViews
{
    [[self titleTextField] setText:[[self document] title]];
    [[self documentBody] setText:[[self document] text]];
}

- (void)textViewDidChange:(UITextView *)textView
{
    [[self wordCountLabel] setText: [NSString stringWithFormat:@"%i words", [[self document] wordCount]]];
}

- (IBAction)saveDocument:(id)sender {
    if ([self document])
    {
        [[self documentController]updateDocument:[self document] withTitle:[[self titleTextField] text] body:[[self documentBody] text]];
    } else {
        [[self documentController]createDocumentWithTitle:[[self titleTextField] text] body:[[self documentBody] text]];
    }
    [[self navigationController] popViewControllerAnimated:YES];
}
@end
