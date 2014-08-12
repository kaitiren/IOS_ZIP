//
//  AppDelegate.h
//  ZipJSON
//
//  Created by kaitiren on 12-8-27.
//  Copyright (c) 2012年 kaitiren. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
	MainViewController *mainViewController;
}

@property (strong, nonatomic) UIWindow *window;

@end
