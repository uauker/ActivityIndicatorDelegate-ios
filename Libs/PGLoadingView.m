//
//  PGLoadingDelegate.m
//  LoadingKit
//
//  Created by Uauker on 1/23/14.
//  Copyright (c) 2014 Uauker Inc. All rights reserved.
//

#import "PGLoadingView.h"

@implementation PGLoadingView

- (UIView *)sharedView {
    if (self.view) {
        return self.view;
    }

    UIView *superview = [self.delegate viewControllerToLoading].view;
    
    UIView *view = [[UIView alloc] initWithFrame:superview.frame];
    view.backgroundColor = [self.delegate respondsToSelector:@selector(color)] ? [self.delegate color] : [self color];
    view.alpha = [self.delegate respondsToSelector:@selector(alpha)] ? [self.delegate alpha] : [self alpha];

    [view addSubview:[self activityIndicator]];
    
    self.view = view;

    return self.view;
}

- (void)show {
    [[self.delegate viewControllerToLoading].view addSubview:[self sharedView]];
}

- (void)hide {
    [[self sharedView] removeFromSuperview];
}

# pragma OPTIONAL

- (UIActivityIndicatorView *)activityIndicator {
    UIView *superview = [self.delegate viewControllerToLoading].view;
    
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
