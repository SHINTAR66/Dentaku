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
    startInput = YES; // 初期入力の宣言
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



// 数字や.が押されたときtagに応じた数字をlabelに表示するセクション

- (IBAction)numberButtonPressed:(id)sender
{
    UIButton *button = (UIButton *)sender;
    if(startInput){
        label.text = [NSString stringWithFormat:@"%d", button.tag];
        startInput = NO;
        if(button.tag == 10){ // 0（初期状態）のときに小数点を表す.が入力された場合
            label.text = [NSString stringWithFormat:@"0."];
        }
    }else{
        if(button.tag == 10){ // 0以外のときに小数点を表す.が入力された場合.を表示し、それ以外では入力された数字を後ろに表示する
            label.text = [NSString stringWithFormat:@"%@.", label.text];
        }else{
            label.text = [NSString stringWithFormat:@"%@%d", label.text, button.tag];
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




// 演算子ボタンを適用するセクション

- (IBAction)optionButtonPressed:(id)sender
{
    UIButton *button = (UIButton *)sender; //ボタンのタグに応じて必要な演算子を扱う準備をする
    currentValue = [label.text floatValue];
    operation = button.tag;
    startInput = YES;
}





//　計算を行う。operation=0はclearボタンのこととしてほかの各演算子を小数点にも対応できるようにfloat型で呼び出す。


- (IBAction)equalButtonPressed:(id)sender
{
    if(operation == 0){
        currentValue = [label.text floatValue];
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






@end
