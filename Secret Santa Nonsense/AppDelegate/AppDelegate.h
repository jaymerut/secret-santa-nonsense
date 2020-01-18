//
//  AppDelegate.h
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 1/17/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainMenuViewController.h"
#import "SideMenuViewController.h"
#import "SWRevealViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) SWRevealViewController *viewController;
@property (strong, nonatomic) MainMenuViewController *frontViewController;
@property (strong, nonatomic) SideMenuViewController *rearViewController;

@end

