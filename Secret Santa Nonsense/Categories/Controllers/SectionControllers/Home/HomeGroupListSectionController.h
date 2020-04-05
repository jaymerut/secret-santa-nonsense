//
//  HomeGroupListSectionController.h
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 3/31/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import <IGListKit/IGListKit.h>

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


@interface HomeGroupListSectionController : IGListSectionController


#pragma mark - Custom Delegates
@property (weak, nonatomic) id <HomeGroupListSectionControllerDelegate> delegate;


#pragma mark - Initialization


#pragma mark - IBOutlets


#pragma mark - Properties
@property (strong, nonatomic) NSArray *groups;


#pragma mark - Public API



@end
