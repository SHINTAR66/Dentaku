//
//  equalButtonPressed.m
//  dentaku
//
//  Created by 大木　進太郎 on 13/01/25.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "equalButtonPressed.h"
#import "ViewController.h"

@implementation equalButtonPressed

@synthesize enum;

//　計算を行う。operation=0はclearボタンのこととしてほかの各演算子を小数点にも対応できるようにfloat型で呼び出す。


- (IBAction)equalButtonPressed:(id)sender
{
    
    if(operation == 0){
        return;
    }else if(operation == 1){
        currentValue += [label.text floatValue];
    }else if(operation == 2){
        currentValue -= [label.text floatValue];
    }else if(operation == 3){
        currentValue *= [label.text floatValue];
    }else{
        currentValue /= [label.text floatValue];
    }
    
    label.text = [NSString stringWithFormat:@"%g", currentValue];
    startInput = YES;
}


//



@end
