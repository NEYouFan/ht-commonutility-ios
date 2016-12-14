//
//  HTSafeObserverTestObserver.m
//  KVOTest
//
//  Created by sky on 8/30/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

#import "HTSafeObserverTestObserver.h"
#import <objc/runtime.h>

@implementation HTSafeObserverTestObserver

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context {
    if ([keyPath isEqualToString:@"age"]) {
        Class classInfo = (__bridge Class)context;
        NSString *className = [NSString stringWithCString:object_getClassName(classInfo)
                                                 encoding:NSUTF8StringEncoding];
        NSLog(@" >> class:%@ , age changed", className);
        NSLog(@" old age is %@", [change objectForKey:@"old"]);
        NSLog(@" new age is %@", [change objectForKey:@"new"]);

    } else if ([keyPath isEqualToString:@"information"]) {
        Class classInfo = (__bridge Class)context;
        NSString *className = [NSString stringWithCString:object_getClassName(classInfo)
                                                 encoding:NSUTF8StringEncoding];
        NSLog(@" >> class:%@ , information changed", className);
        NSLog(@" old information is %@", [change objectForKey:@"old"]);
        NSLog(@" new information is %@", [change objectForKey:@"new"]);

    } else {
        [super observeValueForKeyPath:keyPath
                             ofObject:object
                               change:change
                              context:context];
    }
}

@end
