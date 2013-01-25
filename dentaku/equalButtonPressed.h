//
//  equalButtonPressed.h
//  dentaku
//
//  Created by 大木　進太郎 on 13/01/25.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ViewController;

@interface equalButtonPressed : NSObject

@property enum operation;

- (IBAction)numberButtonPressed:(id)sender controller:(ViewController*)controller;

@end
