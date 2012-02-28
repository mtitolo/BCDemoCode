//
//  AppDelegate.h
//  SplitViews
//
//  Created by Michele Titolo on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController *navigationController;

@property (strong, nonatomic) UISplitViewController *splitViewController;

@property (strong, nonatomic) DetailViewController *detailViewController;


// Create a class method for easy access to this class
+ (AppDelegate*)app;

@end
