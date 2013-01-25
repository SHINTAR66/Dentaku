//
//  dentakuTests.m
//  dentakuTests
//
//  Created by 大木　進太郎 on 12/11/14.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import "dentakuTests.h"

@implementation dentakuTests

- (void)setUp
{
    [super setUp];
    // Set-up code here.

}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}



// 1 + 3 = 4

- (void)testSum{
    UIButton* button = [[UIButton alloc] init];
    
    button.tag = 1;
    [viewController numberButtonPressed:button];
    
    // 
    button.tag = 1;
    [viewController equalButtonPressed:button];
    [viewController optionButtonPressed:button];
    
    //
    button.tag = 3;
    [viewController numberButtonPressed:button];
    
    //
    button.tag = 0;
    [viewController equalButtonPressed:button];
    [viewController optionButtonPressed:button];
    
    
    STAssertEqualObjects(viewController.label.text, @"4", @"Error");

}



// 94 - 49 = 35

- (void)testMinus{
    UIButton* button = [[UIButton alloc] init];
    
    button.tag = 9;
    [viewController numberButtonPressed:button];
    button.tag = 4;
    [viewController numberButtonPressed:button];
    
    //
    button.tag = 2;
    [viewController equalButtonPressed:button];
    [viewController optionButtonPressed:button];
    
    //
    button.tag = 4;
    [viewController numberButtonPressed:button];
    button.tag = 9;
    [viewController numberButtonPressed:button];
    
    //
    button.tag = 0;
    [viewController equalButtonPressed:button];
    [viewController optionButtonPressed:button];
    

    STAssertEqualObjects(viewController.label.text, @"35", @"Error");
}




// 2.5 × 4.2 = 10.5

- (void)testKakeru{
    UIButton* button = [[UIButton alloc] init];
    
    button.tag = 2;
    [viewController numberButtonPressed:button];
    button.tag = 10;
    [viewController numberButtonPressed:button];
    button.tag = 5;
    [viewController numberButtonPressed:button];
    
    //
    button.tag = 3;
    [viewController equalButtonPressed:button];
    [viewController optionButtonPressed:button];
    
    //
    button.tag = 4;
    [viewController numberButtonPressed:button];
    button.tag = 10;
    [viewController numberButtonPressed:button];
    button.tag = 2;
    [viewController numberButtonPressed:button];
    
    //
    button.tag = 0;
    [viewController equalButtonPressed:button];
    [viewController optionButtonPressed:button];
    

    STAssertEqualObjects(viewController.label.text, @"10.5", @"Error");
}



// 12 ÷ 4 = 3

- (void)testWARU{
    UIButton* button = [[UIButton alloc] init];
    
    button.tag = 1;
    [viewController numberButtonPressed:button];
    button.tag = 2;
    [viewController numberButtonPressed:button];
    
    //
    button.tag = 4;
    [viewController equalButtonPressed:button];
    [viewController optionButtonPressed:button];
    
    //
    button.tag = 4;
    [viewController numberButtonPressed:button];
    
    //
    button.tag = 0;
    [viewController equalButtonPressed:button];
    [viewController optionButtonPressed:button];
    

    STAssertEqualObjects(viewController.label.text, @"3", @"Error");
}


@end
