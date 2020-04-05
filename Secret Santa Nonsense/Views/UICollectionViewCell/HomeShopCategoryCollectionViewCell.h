//
//  HomeShopCategoryCollectionViewCell.h
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 4/5/20.
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


@interface HomeShopCategoryCollectionViewCell : UICollectionViewCell


#pragma mark - Custom Delegates


#pragma mark - Initialization


#pragma mark - Properties
@property (strong, nonatomic) NSString *category;


#pragma mark - Public API
- (void)update;
- (void)updateWithCategory:(NSString *)category;


@end
