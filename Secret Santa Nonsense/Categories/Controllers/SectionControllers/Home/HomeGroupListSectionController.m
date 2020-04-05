//
//  HomeGroupListSectionController.m
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 3/31/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import "HomeGroupListSectionController.h"

// Delegates

// Utilities

// Globals

// Classes

// Classes - Models
#import "IGListDiffableArray.h"
#import "SecretSantaGroup.h"

// Classes - Views
#import "HomeGroupListCollectionViewCell.h"

// Classes - View Controllers

// Class Extensions
#import "UIColor+ExtensionMethods.h"

// Definitions


@interface HomeGroupListSectionController ()



@end



@implementation HomeGroupListSectionController


#pragma mark - Initialization
- (void)customInitHomeGroupListSectionController {
    
}
- (instancetype)init {
    if (self = [super init]) {
        [self customInitHomeGroupListSectionController];
        
    }
    return self;
}



#pragma mark - IBOutlets



#pragma mark - Properties



#pragma mark - Private API
#pragma mark IGListSectionController
- (NSInteger)numberOfItems {
    return self.groups.count;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    return CGSizeMake(self.collectionContext.containerSize.width, 90.0);
}
- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    
    HomeGroupListCollectionViewCell *cell = (HomeGroupListCollectionViewCell *)[self.collectionContext dequeueReusableCellOfClass:[HomeGroupListCollectionViewCell class] forSectionController:self atIndex:index];
    
    SecretSantaGroup *group = [self.groups objectAtIndex:index];
    
    if (!group) {
        
        //NEED TO UPDATE URL
        /*
        [manager retrieveImageWithURLString:category.destinationURL size:CGSizeMake(120.0, 90.0) margin:2.0 activityIndicatorSetup:^(UIActivityIndicatorView *activityIndicator) {
            [cell addSubview:activityIndicator];
        } activityIndicatorTeardown:^(UIActivityIndicatorView *activityIndicator) {
            [activityIndicator removeFromSuperview];
        } completion:^(UIImage *image, NSString *imageType) {
            //self.listing.imageThumbnail = image;
            [cell update];
        }];
         */
    }
    
    [cell updateWithGroup:group];
    
    return cell;
}
- (void)didUpdateToObject:(id)object {
    if ([object isKindOfClass:[IGListDiffableArray class]]) {
        IGListDiffableArray *diffableArray = (IGListDiffableArray *)object;
        self.groups = diffableArray.array;
    }
}

- (void)didSelectItemAtIndex:(NSInteger)index {
    
    // Delegate
    if (!!self.delegate && [self.delegate respondsToSelector:@selector(homeGroupListSectionControllerDidSelectGroup:)]) {
        [self.delegate homeGroupListSectionControllerDidSelectGroup:[self.groups objectAtIndex:index]];
    }
}

#pragma mark - Public API



#pragma mark - Delegate Methods


@end
