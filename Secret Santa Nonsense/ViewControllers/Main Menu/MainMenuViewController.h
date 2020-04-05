//
//  MainMenuViewController.h
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 1/17/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import <UIKit/UIKit.h>

// Delegates

// Protocols
#import "HomeGroupListSectionControllerDelegateProtocol.h"
#import "HomeShopCategorySectionControllerDelegateProtocol.h"

// Utilities

// Globals

// Classes

// Classes - Models

// Classes - Views

// Classes - View Controllers
#import "BaseViewController.h"

// Class Extensions

// Definitions


@interface MainMenuViewController : BaseViewController <HomeGroupListSectionControllerDelegate, HomeShopCategorySectionControllerDelegate>


#pragma mark - Custom Delegates


#pragma mark - Initialization


#pragma mark - Properties


#pragma mark - Public API



@end
