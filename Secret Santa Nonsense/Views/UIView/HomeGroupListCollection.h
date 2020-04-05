//
//  HomeGroupListCollection.h
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 3/31/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import <UIKit/UIKit.h>

// Delegates

// Protocols
#import "HomeGroupListSectionControllerDelegateProtocol.h"

// Utilities

// Globals

// Classes

// Classes - Models

// Classes - Views

// Classes - View Controllers

// Class Extensions

// Definitions


@interface HomeGroupListCollection : UIView


#pragma mark - Custom Delegates


#pragma mark - Initialization


#pragma mark - Properties
@property (strong, nonatomic) NSArray *groups;

@property (weak, nonatomic) id<HomeGroupListSectionControllerDelegate> viewController;


#pragma mark - Public API



@end
