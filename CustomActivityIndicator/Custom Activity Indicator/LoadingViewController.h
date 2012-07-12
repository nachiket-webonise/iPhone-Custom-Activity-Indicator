//
//  LoadingViewController.h
//  Custom Activity Indicator
//
//  Created by bhuvan khanna on 12/07/12.
//  Copyright (c) 2012 webonise software solutions pvt ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommonLoadingView.h"

@interface LoadingViewController : UIViewController {
    CommonLoadingView* commonLoadingView;
}

@property(nonatomic,retain)CommonLoadingView* commonLoadingView;

@end
