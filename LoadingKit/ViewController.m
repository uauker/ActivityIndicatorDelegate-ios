//
//  ViewController.m
//  LoadingKit
//
//  Created by Uauker on 1/23/14.
//  Copyright (c) 2014 Uauker Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.loading = [[PGLoadingView alloc] initWithDelegate:self];
//    self.loading.delegate = self;

    
    [self.loading show];
//    [self.loading hide];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)viewToLoading {
    return self.view;
}

//- (UIColor *)color {
//    return [UIColor greenColor];
//}

- (CGFloat)alpha {
    return 0.8f;
}

@end
