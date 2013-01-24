//
//  ViewController.m
//  dentaku
//
//  Created by 大木　進太郎 on 12/11/14.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

@synthesize label; // labelの呼び出し

- (void)viewDidLoad // viewを呼び出して入力の開始
{
    [super viewDidLoad];
    startInput = YES;
}


// 数字や.が押されたときtagに応じた数字をlabelに表示するセクション

- (IBAction)numberButtonPressed:(id)sender
{
    UIButton *b = (UIButton *)sender;
    if(startInput){
        if(b.tag == 0)return;
        label.text = [NSString stringWithFormat:@"%d", b.tag];
        startInput = NO;
        if(b.tag == 10){
            label.text = [NSString stringWithFormat:@"0."];
        }
    }else{
        if(b.tag == 10){
            label.text = [NSString stringWithFormat:@"%@.", label.text];
        }else{
            label.text = [NSString stringWithFormat:@"%@%d", label.text, b.tag];
        }
    }
}




// clearが押されるとoperation=0として初期化する

- (IBAction)clearButtonPressed:(id)sender
{
    currentValue = 0;
    label.text = @"0";
    startInput = YES;
    operation = 0;
}






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







// 演算子ボタンを適用するセクション

- (IBAction)optionButtonPressed:(id)sender
{
    UIButton *b = (UIButton *)sender;
    currentValue = [label.text floatValue];
    operation = b.tag;
    startInput = YES;
}


@end
