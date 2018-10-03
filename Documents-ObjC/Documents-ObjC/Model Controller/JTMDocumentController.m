//
//  JTMDocumentController.m
//  Documents-ObjC
//
//  Created by Jonathan T. Miles on 10/3/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

#import "JTMDocumentController.h"
#import "JTMDocument.h"

@implementation JTMDocumentController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createDocumentWithTitle:(NSString *)title body:(NSString *)text
{
    // allocates then initializes with my custom initializer
    JTMDocument *document = [[JTMDocument alloc] initWithTitle:title text:text];
    [[self documents] addObject:document];
}

- (void)updateDocument:(JTMDocument *)document withTitle:(NSString *)title body:(NSString *)text
{
    // uses all your favorite methods from Swift, including casting to a new type so the index will work (in place of guard let or if let)
    JTMDocument *scratch = document;
    [scratch setTitle:title];
    [scratch setText:text];
    NSUInteger index = (NSUInteger)[[self documents] indexOfObject:document];
    [[self documents] removeObjectAtIndex:index];
    [[self documents]insertObject:scratch atIndex:index];
}

- (void)deleteDocument:(JTMDocument *)document
{
    // just the "removal" part of the update method, above
    NSUInteger index = (NSUInteger)[[self documents] indexOfObject:document];
    [[self documents] removeObjectAtIndex:index];
}

@end
