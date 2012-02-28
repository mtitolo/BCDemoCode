//
//  StretchableButton.m
//  Popovers
//
//  Created by Michele Titolo on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StretchableButton.h"

@implementation StretchableButton

- (void)awakeFromNib
{
    UIImage* buttonImageNormal = [self backgroundImageForState:UIControlStateNormal];
    buttonImageNormal = [buttonImageNormal stretchableImageWithLeftCapWidth:5 topCapHeight:5];
    [self setBackgroundImage:buttonImageNormal forState:UIControlStateNormal];
    
    UIImage* buttonImageHighlight = [self backgroundImageForState:UIControlStateHighlighted];
    buttonImageHighlight = [buttonImageHighlight stretchableImageWithLeftCapWidth:5 topCapHeight:5];
    [self setBackgroundImage:buttonImageHighlight forState:UIControlStateHighlighted];
}

@end
