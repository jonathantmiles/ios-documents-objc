//
//  JTMDocumentDetailViewController.h
//  Documents-ObjC
//
//  Created by Jonathan T. Miles on 10/3/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JTMDocument.h"
#import "JTMDocumentController.h"

NS_ASSUME_NONNULL_BEGIN

@interface JTMDocumentDetailViewController : UIViewController <UITextViewDelegate>

- (void)updateViews;

- (IBAction)saveDocument:(id)sender;

@property JTMDocument *document;
@property JTMDocumentController *documentController;

@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *documentBody;

@end

NS_ASSUME_NONNULL_END
