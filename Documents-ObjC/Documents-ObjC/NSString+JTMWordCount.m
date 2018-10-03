//
//  NSString+JTMWordCount.m
//  Documents-ObjC
//
//  Created by Jonathan T. Miles on 10/3/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

#import "NSString+JTMWordCount.h"

@implementation NSString (JTMWordCount)

- (int)wordCount
{
    NSArray *words = [self componentsSeparatedByString:@" "];
    return (int) [words count]; // (int) converts the type into an int, in the sense of returning that type for the method/message [words count]
}

@end
