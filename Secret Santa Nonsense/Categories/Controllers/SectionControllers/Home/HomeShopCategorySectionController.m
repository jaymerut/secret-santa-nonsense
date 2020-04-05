//
//  HomeShopCategorySectionController.m
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 4/5/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import "HomeShopCategorySectionController.h"

// Delegates

// Utilities

// Globals

// Classes

// Classes - Models
#import "IGListDiffableArray.h"

// Classes - Views
#import "HomeShopCategoryCollectionViewCell.h"

// Classes - View Controllers

// Class Extensions
#import "UIColor+ExtensionMethods.h"

// Definitions


@interface HomeShopCategorySectionController ()



@end



@implementation HomeShopCategorySectionController


#pragma mark - Initialization
- (void)customInitHomeShopCategorySectionController {
    
}
- (instancetype)init {
    if (self = [super init]) {
        [self customInitHomeShopCategorySectionController];
        
    }
    return self;
}



#pragma mark - IBOutlets



#pragma mark - Properties



#pragma mark - Private API
#pragma mark IGListSectionController
- (NSInteger)numberOfItems {
    return self.categories.count;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    return CGSizeMake(self.collectionContext.containerSize.width, 90.0);
}
- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    
    HomeShopCategoryCollectionViewCell *cell = (HomeShopCategoryCollectionViewCell *)[self.collectionContext dequeueReusableCellOfClass:[HomeShopCategoryCollectionViewCell class] forSectionController:self atIndex:index];
    
    NSString *category = [self.categories objectAtIndex:index];
    
    [cell updateWithCategory:category];
    
    return cell;
}
- (void)didUpdateToObject:(id)object {
    if ([object isKindOfClass:[IGListDiffableArray class]]) {
        IGListDiffableArray *diffableArray = (IGListDiffableArray *)object;
        self.categories = diffableArray.array;
    }
}

- (void)didSelectItemAtIndex:(NSInteger)index {
    
    // Delegate
    if (!!self.delegate && [self.delegate respondsToSelector:@selector(homeShopCategorySectionControllerDidSelectCategory:)]) {
        [self.delegate homeShopCategorySectionControllerDidSelectCategory:[self.categories objectAtIndex:index]];
    }
}


#pragma mark - Public API



#pragma mark - Delegate Methods



@end
