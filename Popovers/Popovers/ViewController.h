//
//  ViewController.h
//  Popovers
//
//  Created by Michele Titolo on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPopoverControllerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *codeButton;
@property (strong, nonatomic) UIPopoverController *codePopoverController;

- (IBAction)popoverButtonPressed:(id)sender;
- (IBAction)dismissPopover:(id)sender;

@end
