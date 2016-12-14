//
//  SecondViewController.m
//  HTCommonUtilityDemo
//
//  Created by NetEase on 15/9/2.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import "SecondViewController.h"
#import "HTRuntimeTestModel.h"
#import "HTRuntimeHelper.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSArray *propertyList = [HTRuntimeHelper getPropertyList:[HTRuntimeTestModel class]];
    NSLog(@"%@", propertyList);
}

@end
