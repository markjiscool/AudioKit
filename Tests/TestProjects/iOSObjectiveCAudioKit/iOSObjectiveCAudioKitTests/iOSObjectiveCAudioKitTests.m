//
//  iOSObjectiveCAudioKitTests.m
//  iOSObjectiveCAudioKitTests
//
//  Created by Aurelius Prochazka on 4/18/15.
//  Copyright (c) 2015 Aurelius Prochazka. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "AKFoundation.h"
#import "MathTestInstrument.h"
#import "ViewController.h"


@interface iOSObjectiveCAudioKitTests : XCTestCase

@end

@implementation iOSObjectiveCAudioKitTests {
    UIApplication *app;
    ViewController *vc;
    float AK_ACCURACY;
}

- (void)setUp {
    [super setUp];
    vc = (ViewController *)[[[[UIApplication sharedApplication] delegate] window] rootViewController];
    AK_ACCURACY = 0.001;
}

- (void)testStandardSineTable {
    AKTable *sine = vc.tableTestInstrument.sine;
    for (int i = 0; i <= 10; i++) {
        XCTAssertEqualWithAccuracy([sine valueAtFractionalWidth:0.1 * i], sinf(0.1 * i * 2 * M_PI), AK_ACCURACY);
    }
}


@end
