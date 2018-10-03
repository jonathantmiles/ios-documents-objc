//
//  JTMDocument.m
//  Documents-ObjC
//
//  Created by Jonathan T. Miles on 10/3/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

#import "JTMDocument.h"
#import "NSString+JTMWordCount.h"

@implementation JTMDocument


- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text
{
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
    }
    return self;
}

- (void)setWordCount:(int)wordCount
{
    self.wordCount = [[self text] wordCount];
}

@end
