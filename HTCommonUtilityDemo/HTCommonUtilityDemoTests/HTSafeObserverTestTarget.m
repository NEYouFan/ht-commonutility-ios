//
//  HTSafeObserverTestTarget.m
//  KVOTest
//
//  Created by sky on 8/30/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

#import "HTSafeObserverTestTarget.h"

@implementation HTSafeObserverTestTarget

- (id)init {
    if (self = [super init]) {
        self.age = 10;
        self.grade = @"0";
    }
    return self;
}


@end
