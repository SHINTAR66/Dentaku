//
//  clearButtonPressed.m
//  dentaku
//
//  Created by 大木　進太郎 on 13/01/25.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "clearButtonPressed.h"
#import "ViewController.h"

@implementation clearButtonPressed

@synthesize ;

- (IBAction)clearButtonPressed:(id)sender controller:(ViewController *)controller;
{
    currentValue = 0;
    label.text = @"0";
    startInput = YES;
    operation = 0;
}

@end
