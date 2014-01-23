//
//  ViewController.h
//  LoadingKit
//
//  Created by Uauker on 1/23/14.
//  Copyright (c) 2014 Uauker Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PGLoadingView.h"

@interface ViewController : UIViewController <PGLoadingViewDelegate>

@property (nonatomic, strong) PGLoadingView *loading;

@end
