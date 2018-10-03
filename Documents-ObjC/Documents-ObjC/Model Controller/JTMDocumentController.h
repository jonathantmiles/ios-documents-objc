//
//  JTMDocumentController.h
//  Documents-ObjC
//
//  Created by Jonathan T. Miles on 10/3/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JTMDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface JTMDocumentController : NSObject

- (void)createDocumentWithTitle:(NSString *)title body:(NSString *)text;

- (void)updateDocument:(JTMDocument *)document withTitle:(NSString *)title body:(NSString *)text;

- (void)deleteDocument:(JTMDocument *)document;

@property (readonly)NSMutableArray *documents;

@end

NS_ASSUME_NONNULL_END
