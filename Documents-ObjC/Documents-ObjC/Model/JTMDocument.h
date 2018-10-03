//
//  JTMDocument.h
//  Documents-ObjC
//
//  Created by Jonathan T. Miles on 10/3/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JTMDocument : NSObject

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text;

@property NSString *title;
@property NSString *text;
@property int wordCount;


@end

NS_ASSUME_NONNULL_END
