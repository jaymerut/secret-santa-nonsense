//
//  HomeGroupListCollectionViewCell.m
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 3/31/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import "HomeGroupListCollectionViewCell.h"

// Delegates

// Utilities
#import <Masonry/Masonry.h>

// Globals

// Classes

// Classes - Models
#import "SecretSantaGroup.h"

// Classes - Views

// Classes - View Controllers

// Class Extensions
#import "UIColor+ExtensionMethods.h"

// Definitions


@interface HomeGroupListCollectionViewCell ()

// UI
@property (strong, nonatomic) UILabel *labelName;

@end



@implementation HomeGroupListCollectionViewCell


#pragma mark - Initialization
- (void)customInitHomeGroupListCollectionViewCell {
    
    // Setup
    [self setupHomeGroupListCollectionViewCell];
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self customInitHomeGroupListCollectionViewCell];
        
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self customInitHomeGroupListCollectionViewCell];
        
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
- (void)setupHomeGroupListCollectionViewCell {
    
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
    
    self.labelName.text = @"Test";
}
- (void)updateWithGroup:(SecretSantaGroup *)group {
    _group = group;
    
    [self update];
}

#pragma mark - Delegate Methods



@end
