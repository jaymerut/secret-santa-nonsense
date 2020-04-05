//
//  HomeShopCategorySectionController.h
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 4/5/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import <IGListKit/IGListKit.h>

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


@interface HomeShopCategorySectionController : IGListSectionController


#pragma mark - Custom Delegates
@property (weak, nonatomic) id <HomeShopCategorySectionControllerDelegate> delegate;

#pragma mark - Initialization


#pragma mark - IBOutlets


#pragma mark - Properties
@property (strong, nonatomic) NSArray *categories;


#pragma mark - Public API



@end
