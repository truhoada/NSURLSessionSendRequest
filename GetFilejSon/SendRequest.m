//
//  SendRequest.m
//  GetFilejSon
//
//  Created by hoangdangtrung on 1/15/16.
//  Copyright © 2016 hoangdangtrung. All rights reserved.
//

#import "SendRequest.h"

@implementation SendRequest

+ (void)requestPath:(NSString*)path onCompletion:(RequestCompletionHandler)complete {
    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:[NSURL URLWithString:path] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSString *result = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        if (complete) {
            complete(result, error);
        }
    }] resume];
}

@end
