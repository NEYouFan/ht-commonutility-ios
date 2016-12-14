//
//  HTCommonUtilityDemoTests.m
//  HTCommonUtilityDemoTests
//
//  Created by NetEase on 15/9/2.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "HTSafeObserverTestObserver.h"
#import "HTSafeObserverTestTarget.h"
#import "NSObject+HTSafeObserver.h"

@interface HTCommonUtilityDemoTests : XCTestCase

@end

@implementation HTCommonUtilityDemoTests

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

/// 测试系统的 KVO，当 target 设为 nil 后应该会崩溃
- (void)testSystemKVO {
    HTSafeObserverTestObserver *observer = [[HTSafeObserverTestObserver alloc] init];
    HTSafeObserverTestTarget *target = [[HTSafeObserverTestTarget alloc] init];
    
    [target addObserver:observer
                forKeyPath:@"age"
                   options:NSKeyValueObservingOptionNew
                   context:(__bridge void *)([HTSafeObserverTestTarget class])];
    
    [target addObserver:observer
             forKeyPath:@"age"
                options:NSKeyValueObservingOptionNew
                context:(__bridge void *)([HTSafeObserverTestObserver class])];
    
    target.age = 1;
    target.age = target.age;
    
    target = nil;
}

/// 测试 HTSafeKVO
- (void)testSafeKVO {
    HTSafeObserverTestObserver *observer = [[HTSafeObserverTestObserver alloc] init];
    HTSafeObserverTestObserver *observer2 = [[HTSafeObserverTestObserver alloc] init];
    HTSafeObserverTestObserver *observer3 = [[HTSafeObserverTestObserver alloc] init];
    HTSafeObserverTestTarget *target = [[HTSafeObserverTestTarget alloc] init];
    
    [target ht_addObserver:observer
                forKeyPath:@"age"
                   options:NSKeyValueObservingOptionNew
                   context:(__bridge void *)([HTSafeObserverTestTarget class])];
    
    [target ht_addObserver:observer2
                forKeyPath:@"age"
                   options:NSKeyValueObservingOptionNew
                   context:(__bridge void *)([HTSafeObserverTestObserver class])];

    [target ht_addObserver:observer3
                forKeyPath:@"age"
                   options:NSKeyValueObservingOptionNew
                   context:(__bridge void *)([HTSafeObserverTestObserver class])];
    
    [target ht_removeObserver:observer2
                   forKeyPath:@"age"
                      context:(__bridge void *)([HTSafeObserverTestObserver class])];

    [target ht_removeObserver:observer3
                   forKeyPath:@"age"
                      context:(__bridge void *)([HTSafeObserverTestObserver class])];

    
    target.age = 1;
    target.age = target.age;
}


@end
