//
//  ViewController.m
//  dentaku
//
//  Created by 大木　進太郎 on 12/11/14.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    startInput = YES;
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)numberButtonPressed:(id)sender
{
    UIButton *b = (UIButton *)sender;
    if(startInput){
        if(b.tag == 0)return;
        label.text = [NSString stringWithFormat:@"%d", b.tag];
        startInput = NO;
    }else{
        label.text = [NSString stringWithFormat:@"%@%d", label.text, b.tag];
    }
}

- (IBAction)clearButtonPressed:(id)sender
{
    currentValue = 0;
    label.text = @"0";
    startInput = YES;
}

- (IBAction)equalButtonPressed:(id)sender
{
    if(operation == 0){
        currentValue += [label.text intValue];
    }else if(operation == 1){
        currentValue -= [label.text intValue];
    }else if(operation == 2){
        currentValue *= [label.text intValue];
    }else{
        currentValue /= [label.text intValue];
    }
    
    label.text = [NSString stringWithFormat:@"%g", currentValue];
    startInput = YES;
}

- (IBAction)optionButtonPressed:(id)sender
{
    UIButton *b = (UIButton *)sender;
    currentValue = [label.text intValue];
    operation = b.tag;
    startInput = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
