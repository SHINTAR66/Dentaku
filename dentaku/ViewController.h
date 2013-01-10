//
//  ViewController.h
//  dentaku
//
//  Created by 大木　進太郎 on 12/11/14.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *label;
    BOOL startInput;
    float currentValue;
    int operation;
}
@property (retain, nonatomic)IBOutlet UILabel *label;
-(IBAction)numberButtonPressed:(id)sender;
-(IBAction)clearButtonPressed:(id)senser;
-(IBAction)equalButtonPressed:(id)sender;
-(IBAction)optionButtonPressed:(id)sender;
@end
