//
//  ViewController.m
//  GetFilejSon
//
//  Created by hoangdangtrung on 1/15/16.
//  Copyright © 2016 hoangdangtrung. All rights reserved.
//

#import "ViewController.h"
#import "SendRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [SendRequest requestPath:@"http://localhost:2403/student" onCompletion:^(NSString *data, NSError *error) {
        NSLog(@"%@", data);
    }];
}

@end
