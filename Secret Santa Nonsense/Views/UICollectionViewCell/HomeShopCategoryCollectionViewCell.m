//
//  HomeShopCategoryCollectionViewCell.m
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 4/5/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import "HomeShopCategoryCollectionViewCell.h"

// Delegates

// Utilities
#import <Masonry/Masonry.h>

// Globals

// Classes

// Classes - Models

// Classes - Views

// Classes - View Controllers

// Class Extensions
#import "UIColor+ExtensionMethods.h"

// Definitions


@interface HomeShopCategoryCollectionViewCell ()

// UI
@property (strong, nonatomic) UILabel *labelName;

@end



@implementation HomeShopCategoryCollectionViewCell


#pragma mark - Initialization
- (void)customInitHomeShopCategoryCollectionViewCell {
    
    // Setup
    [self setupHomeShopCategoryCollectionViewCell];
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self customInitHomeShopCategoryCollectionViewCell];
        
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self customInitHomeShopCategoryCollectionViewCell];
        
    }
    return self;
}



#pragma mark - Properties
- (UILabel *)labelName {
    if (!_labelName) {
        _labelName = [[UILabel alloc] initWithFrame:CGRectZero];
        _labelName.font = [UIFont boldSystemFontOfSize:12.0];
        _labelName.textColor = [UIColor colorWithHEX:0x444444];
    }
    return _labelName;
}


#pragma mark - Private API
- (void)setupHomeShopCategoryCollectionViewCell {
    
    // Label Name
    [self.contentView addSubview:self.labelName];
    [self.labelName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView.mas_centerX);
        make.centerY.equalTo(self.contentView.mas_centerY);
        make.height.equalTo(@(40));
    }];
    
}



#pragma mark - Public API
- (void)update {
    
    self.labelName.text = self.category;
}
- (void)updateWithGroup:(NSString *)category {
    _category = category;
    
    [self update];
}


#pragma mark - Delegate Methods



@end
