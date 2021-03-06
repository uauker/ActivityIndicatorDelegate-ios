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
- (UIView *)viewToLoading;

@optional
- (UIActivityIndicatorView *)activityIndicator;
- (CGFloat)alpha;
- (UIColor *)color;


@end

@interface PGLoadingView : UIView

@property (nonatomic, weak) id<PGLoadingViewDelegate> delegate;

@property (nonatomic, strong) UIView *view;

- (id)initWithDelegate:(id<PGLoadingViewDelegate>) delegate;

- (void)show;
- (void)hide;

@end
