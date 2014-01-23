//
//  PGLoadingDelegate.h
//  LoadingKit
//
//  Created by Uauker on 1/23/14.
//  Copyright (c) 2014 Uauker Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PGLoadingViewDelegate <NSObject>

@required
- (UIViewController *)viewControllerToLoading;

@optional
- (UIActivityIndicatorView *)activityIndicator;
- (CGFloat)alpha;
- (UIColor *)color;


@end

@interface PGLoadingView : UIView

@property (nonatomic, weak) id<PGLoadingViewDelegate> delegate;

@property (nonatomic, strong) UIView *view;

- (void)show;
- (void)hide;

@end
