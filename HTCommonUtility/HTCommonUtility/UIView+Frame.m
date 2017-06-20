//
//  UIView+Frame.m
//  WZLCodeLibrary
//
//  Created by wzl on 15/3/23.
//  Copyright (c) 2015年 Weng-Zilin. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

- (void)setHt_x:(CGFloat)ht_x {
    CGRect frame = self.frame;
    frame.origin.x = ht_x;
    self.frame = frame;
}

- (CGFloat)ht_x {
    return self.frame.origin.x;
}

- (void)setHt_y:(CGFloat)ht_y {
    CGRect frame = self.frame;
    frame.origin.y = ht_y;
    self.frame = frame;
}

- (CGFloat)ht_y {
    return self.frame.origin.y;
}

- (void)setHt_origin:(CGPoint)ht_origin {
    CGRect frame = self.frame;
    frame.origin = ht_origin;
    self.frame = frame;
}

- (CGPoint)ht_origin {
    return self.frame.origin;
}

- (void)setHt_width:(CGFloat)ht_width {
    CGRect frame = self.frame;
    frame.size.width = ht_width;
    self.frame = frame;
}

- (CGFloat)ht_width {
    return self.frame.size.width;
}

- (void)setHt_height:(CGFloat)ht_height {
    CGRect frame = self.frame;
    frame.size.height = ht_height;
    self.frame = frame;
}

- (CGFloat)ht_height {
    return self.frame.size.height;
}

- (void)setHt_size:(CGSize)ht_size {
    CGRect frame = self.frame;
    frame.size = ht_size;
    self.frame = frame;
}

- (CGSize)ht_size {
    return self.frame.size;
}

- (void)setHt_bottom:(CGFloat)ht_bottom {
    CGRect frame = self.frame;
    frame.origin.y = ht_bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)ht_bottom {
    return CGRectGetMaxY(self.frame);
}

- (CGFloat)ht_tail {
    return CGRectGetMaxX(self.frame);
}

- (void)setHt_tail:(CGFloat)ht_tail {
    CGRect frame = self.frame;
    frame.origin.x = ht_tail - frame.size.width;
    self.frame = frame;
}

- (void)setHt_middleX:(CGFloat)ht_middleX {
    CGRect frame = self.frame;
    frame.origin.x = ht_middleX - frame.size.width / 2;
    self.frame = frame;
}

- (CGFloat)ht_middleX {
    return CGRectGetMidX(self.frame);
}

- (void)setHt_middleY:(CGFloat)ht_middleY {
    CGRect frame = self.frame;
    frame.origin.y = ht_middleY - frame.size.height / 2 ;
    self.frame = frame;
}

- (CGFloat)ht_middleY {
    return CGRectGetMidY(self.frame);
}


@end
