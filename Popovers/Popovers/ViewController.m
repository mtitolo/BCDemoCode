//
//  ViewController.m
//  Popovers
//
//  Created by Michele Titolo on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "PopoverViewController.h"
#import "StretchableButton.h"

@implementation ViewController
@synthesize codeButton = _codeButton;
@synthesize codePopoverController = _codePopoverController;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setCodeButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [self.codePopoverController presentPopoverFromRect:self.codeButton.frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionLeft animated:YES];
}

- (IBAction)popoverButtonPressed:(id)sender
{
    PopoverViewController* viewController = [[UIStoryboard storyboardWithName:@"MainStoryboard_iPad" bundle:nil] instantiateViewControllerWithIdentifier:@"IndependantPopoverController"];
    self.codePopoverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
    self.codePopoverController.delegate = self;
    [viewController.dismissButton addTarget:self action:@selector(dismissPopover:) forControlEvents:UIControlEventTouchUpInside];
    [self.codePopoverController presentPopoverFromRect:self.codeButton.frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionLeft animated:YES];
}

- (IBAction)dismissPopover:(id)sender
{
    [self.codePopoverController dismissPopoverAnimated:YES];
}

#pragma mark - UIPopoverControllerDelegate

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController
{
    if (popoverController == self.codePopoverController) {
        self.codePopoverController = nil;
    }
}

@end
