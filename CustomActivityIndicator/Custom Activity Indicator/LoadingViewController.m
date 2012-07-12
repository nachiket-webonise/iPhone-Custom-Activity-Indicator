//
//  LoadingViewController.m
//  Custom Activity Indicator
//
//  Created by bhuvan khanna on 12/07/12.
//  Copyright (c) 2012 webonise software solutions pvt ltd. All rights reserved.
//

#import "LoadingViewController.h"

@interface LoadingViewController ()

@end

@implementation LoadingViewController

@synthesize commonLoadingView;

- (void)viewDidLoad
{
    [self showLoadingView:@"Sample Loading Message"];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)showLoadingView:(NSString*)message {
    [self performSelector:@selector(removeLoadingView) withObject:nil afterDelay:15];
    self.commonLoadingView=[[CommonLoadingView alloc] initWithNibName:@"CommonLoadingView" bundle:nil];
    [self.view addSubview:self.commonLoadingView.view];
    [commonLoadingView showProgressDialog:message];
}

-(void)removeLoadingView {
    [commonLoadingView viewWillUnload];
    [commonLoadingView.view removeFromSuperview];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
