//
//  SendRequest.h
//  GetFilejSon
//
//  Created by hoangdangtrung on 1/15/16.
//  Copyright © 2016 hoangdangtrung. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^RequestCompletionHandler)(NSString*, NSError*);

@interface SendRequest : NSObject

+ (void)requestPath:(NSString *)path
      onCompletion:(RequestCompletionHandler)complete;

@end
