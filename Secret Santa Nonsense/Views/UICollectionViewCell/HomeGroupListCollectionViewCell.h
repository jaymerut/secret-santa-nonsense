//
//  HomeGroupListCollectionViewCell.h
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 3/31/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import <UIKit/UIKit.h>

// Delegates

// Utilities

// Globals

// Classes

// Classes - Models

// Classes - Views

// Classes - View Controllers

// Class Extensions

// Definitions

@class SecretSantaGroup;

@interface HomeGroupListCollectionViewCell : UICollectionViewCell


#pragma mark - Custom Delegates


#pragma mark - Initialization


#pragma mark - Properties
@property (strong, nonatomic) SecretSantaGroup *group;


#pragma mark - Public API
- (void)update;
- (void)updateWithGroup:(SecretSantaGroup *)group;


@end
