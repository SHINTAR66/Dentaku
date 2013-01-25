//
//  clearButtonPressed.h
//  dentaku
//
//  Created by 大木　進太郎 on 13/01/25.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ViewController;

@interface clearButtonPressed : NSObject
{
    BOOL startInput;
    float currentValue;
    int operation;
    IBOutlet UILabel *label;
}

@property enum label;

- (IBAction)clearButtonPressed:(id)sender controller:(ViewController*)controller;

@end
