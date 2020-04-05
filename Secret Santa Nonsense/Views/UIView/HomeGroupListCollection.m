//
//  HomeGroupListCollection.m
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 3/31/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import "HomeGroupListCollection.h"

// Delegates

// Utilities
#import <IGListKit/IGListKit.h>
#import <Masonry/Masonry.h>

// Globals

// Classes

// Classes - Models
#import "IGListDiffableArray.h"

// Classes - Views

// Classes - View Controllers

// Classes - Controllers
#import "HomeGroupListSectionController.h"

// Class Extensions
#import "UIColor+ExtensionMethods.h"

// Definitions


@interface HomeGroupListCollection () <IGListAdapterDataSource>

@property (strong, nonatomic) IGListAdapter *adapter;
@property (strong, nonatomic) UICollectionView *collectionView;

@end



@implementation HomeGroupListCollection


#pragma mark - Initialization
- (void)customInitHomeGroupListCollection {
    
    // Setup
    [self setupHomeGroupListCollection];
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self customInitHomeGroupListCollection];
        
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self customInitHomeGroupListCollection];
        
    }
    return self;
}



#pragma mark - Properties
- (IGListAdapter *)adapter {
    if (!_adapter) {
        _adapter = [[IGListAdapter alloc] initWithUpdater:[[IGListAdapterUpdater alloc] init] viewController:self workingRangeSize:0];
        _adapter.collectionView = self.collectionView;
        _adapter.dataSource = self;
    }
    return _adapter;
}
- (UICollectionView *)collectionView {
    if (!_collectionView) {
        UICollectionViewFlowLayout *flowlayout = [UICollectionViewFlowLayout new];
        _collectionView = [[UICollectionView alloc] initWithFrame:self.frame collectionViewLayout:flowlayout];
        _collectionView.backgroundColor = [UIColor whiteColor];
    }
    return _collectionView;
}

- (void)setGroups:(NSArray *)groups {
    _groups = groups;
    
    [self.adapter performUpdatesAnimated:YES completion:nil];
}


#pragma mark - Private API
- (void)setupHomeGroupListCollection {
    
    // Self
    [self setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self setClipsToBounds:YES];
    
    // CollectionView
    [self addSubview:self.collectionView];
    [self.collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top);
        make.left.equalTo(self.mas_left).offset(20);
        make.right.equalTo(self.mas_right);
        make.bottom.equalTo(self.mas_bottom);
        make.height.equalTo(@(100));
    }];
    
}



#pragma mark - Public API



#pragma mark - Delegate Methods
#pragma mark IGListAdapterDataSource Methods
- (NSArray<id<IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter {
    NSMutableArray *groups = [NSMutableArray new];
    if (!!self.groups.count) {
        [groups addObjectsFromArray:self.groups];
    }
    if (!!groups.count) {
        return @[[[IGListDiffableArray alloc] initWithArray:groups]];
    }
    
    return @[];
}

- (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object {
    HomeGroupListSectionController *sectionController = [[HomeGroupListSectionController alloc] init];
    sectionController.delegate = self.viewController;
    return sectionController;
}

- (UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter {
    
    UILabel *label = [[UILabel alloc] init];
    [label setText:@"No Groups"];
    [label setTextAlignment:NSTextAlignmentCenter];
    
    return label;
}


@end
