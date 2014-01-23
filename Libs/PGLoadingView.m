//
//  PGLoadingDelegate.m
//  LoadingKit
//
//  Created by Uauker on 1/23/14.
//  Copyright (c) 2014 Uauker Inc. All rights reserved.
//

#import "PGLoadingView.h"

@implementation PGLoadingView

#pragma public

- (id)initWithDelegate:(id<PGLoadingViewDelegate>) delegate {
    self = [super init];
    
    if (self) {
        self.delegate = delegate;
    }
    
    return self;
}

- (void)show {
    [[self.delegate viewToLoading] addSubview:[self sharedView]];
}

- (void)hide {
    [[self sharedView] removeFromSuperview];
}

# pragma private

- (UIView *)sharedView {
    if (self.view) {
        return self.view;
    }
    
    UIView *superview = [self.delegate viewToLoading];
    
    UIView *view = [[UIView alloc] initWithFrame:superview.frame];
    view.backgroundColor = [self.delegate respondsToSelector:@selector(color)] ? [self.delegate color] : [self color];
    view.alpha = [self.delegate respondsToSelector:@selector(alpha)] ? [self.delegate alpha] : [self alpha];
    
    UIActivityIndicatorView *indicator = [self.delegate respondsToSelector:@selector(activityIndicator)] ? [self.delegate activityIndicator] : [self activityIndicator];
    [view addSubview:indicator];
    
    self.view = view;
    
    return self.view;
}

# pragma OPTIONAL

- (UIActivityIndicatorView *)activityIndicator {
    UIView *superview = [self.delegate viewToLoading];
    
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [indicator setCenter:CGPointMake(superview.frame.size.width/2.0, superview.frame.size.height/2.0)];
    [indicator startAnimating];
    
    return indicator;
}

- (CGFloat)alpha {
    return 0.4f;
}

- (UIColor *)color {
    return [UIColor yellowColor];
}

@end
