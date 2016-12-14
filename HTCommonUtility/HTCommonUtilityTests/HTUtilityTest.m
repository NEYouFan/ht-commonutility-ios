//
//  HTUtilityTest.m
//  HTCommonUtility
//
//  Created by NetEase on 15/9/1.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "HTCommonUtility.h"
#import "HTLog.h"
#import "HTCommonUtilityLog.h"
#import "HTLogModuleFormatter.h"

@interface HTUtilityTest : XCTestCase

@end

@implementation HTUtilityTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testModuleLogs {
    HTLogInit();
    
    NSString *md5 = [HTCommonUtility md5StringFromString:@"testModuleLogs"];
    XCTAssert([md5 length] > 0, @"Pass");
}

@end
