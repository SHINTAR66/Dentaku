//
//  ViewController.h
//  dentaku
//
//  Created by 大木　進太郎 on 12/11/14.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController // 変数の定義。数字計算のfloat,演算子用のoperation
{
    BOOL startInput;
    float currentValue;
    int operation;
}
@property(nonatomic,retain) UILabel *label; // メソッド追加のためにpropertyを定義。並列処理回避のnonatomic

-(IBAction)numberButtonPressed:(id)sender;  // 各セクションの定義。数字、clear、演算子
-(IBAction)clearButtonPressed:(id)senser;
-(IBAction)equalButtonPressed:(id)sender;
-(IBAction)optionButtonPressed:(id)sender;
@end
