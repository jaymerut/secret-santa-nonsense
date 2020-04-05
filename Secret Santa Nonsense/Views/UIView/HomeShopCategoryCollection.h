//
//  HomeShopCategoryCollection.h
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 4/5/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import <UIKit/UIKit.h>

// Delegates

// Protocols
#import "HomeShopCategorySectionControllerDelegateProtocol.h"

// Utilities

// Globals

// Classes

// Classes - Models

// Classes - Views

// Classes - View Controllers

// Class Extensions

// Definitions


@interface HomeShopCategoryCollection : UIView


#pragma mark - Custom Delegates


#pragma mark - Initialization


#pragma mark - Properties
@property (strong, nonatomic) NSArray *categories;

@property (weak, nonatomic) id<HomeShopCategorySectionControllerDelegate> viewController;

#pragma mark - Public API



@end
