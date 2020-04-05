//
//  MainMenuViewController.m
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 1/17/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import "MainMenuViewController.h"

// Delegates

// Utilities
#import <Masonry/Masonry.h>
#import <SWRevealViewController/SWRevealViewController.h>

// Globals

// Classes

// Classes - Models
#import "SecretSantaGroup.h"

// Classes - Views
#import "HomeGroupListCollection.h"
#import "HomeShopCategoryCollection.h"

// Classes - View Controllers
#import "SideMenuViewController.h"
#import "WishListViewController.h"

// Class Extensions
#import "UIColor+ExtensionMethods.h"

// Definitions


@interface MainMenuViewController ()

@property (strong, nonatomic) UIButton *buttonWishList;
@property (strong, nonatomic) UICollectionView *collectionView;
@property (strong, nonatomic) UICollectionViewFlowLayout *flowLayout;

@property (strong, nonatomic) NSMutableArray *arrayGroups;
@property (strong, nonatomic) NSMutableArray *arrayShopCategories;

@property (strong, nonatomic) HomeGroupListCollection *groupCollection;
@property (strong, nonatomic) HomeShopCategoryCollection *shopCategoryCollection;

@property (strong, nonatomic) UILabel *labelGroup;
@property (strong, nonatomic) UILabel *labelShopCategory;
@end



@implementation MainMenuViewController


#pragma mark - Initialization
- (void)customInitMainMenuViewController {
    
}
- (instancetype)init {
    if (self = [super init]) {
        [self customInitMainMenuViewController];

    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self customInitMainMenuViewController];
        
    }
    return self;
}



#pragma mark - UIViewController Lifecycle Methods
- (void)loadView {
    [super loadView];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setTitle:@"Secret Santa"];
    
    // Setup
    [self setupMainMenuViewController];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}
- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
}
- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}

- (void)dealloc {
    
}
- (void)didReceiveMemoryWarning {
    // SET ALL STRONG POINTERS TO NIL
    
    
    [super didReceiveMemoryWarning];
}



#pragma mark - Properties
- (UICollectionView *)collectionView {
    if (!_collectionView) {
        
        
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:self.flowLayout];
        _collectionView.backgroundColor = UIColor.whiteColor;
        _collectionView.alwaysBounceVertical = YES;
        _collectionView.backgroundColor = [UIColor colorWithHEX:0xCCCCCC];
        
        _collectionView.contentInset = UIEdgeInsetsMake(5, 0, 0, 0);
        _collectionView.accessibilityLabel = @"ListingsList";
        
        
        
        // TODO: Delete
        _collectionView.backgroundColor = UIColor.whiteColor;
    }
    return _collectionView;
}

- (UICollectionViewFlowLayout *)flowLayout {
    if (!_flowLayout) {
        _flowLayout = [[UICollectionViewFlowLayout alloc] init];
        _flowLayout.estimatedItemSize = CGSizeMake(self.view.frame.size.width, 170);
    }
    return _flowLayout;
}

- (NSMutableArray *)arrayGroups {
    if (!_arrayGroups) {
        _arrayGroups = [NSMutableArray new];
    }
    return _arrayGroups;
}

- (NSMutableArray *)arrayShopCategories {
    if (!_arrayShopCategories) {
        _arrayShopCategories = [NSMutableArray new];
    }
    return _arrayShopCategories;
}

- (HomeGroupListCollection *)groupCollection {
    if (!_groupCollection) {
        _groupCollection = [[HomeGroupListCollection alloc] init];
        _groupCollection.backgroundColor = [UIColor whiteColor];
    }
    return _groupCollection;
}

- (HomeShopCategoryCollection *)shopCategoryCollection {
    if (!_shopCategoryCollection) {
        _shopCategoryCollection = [[HomeShopCategoryCollection alloc] init];
        _shopCategoryCollection.backgroundColor = [UIColor whiteColor];
    }
    return _shopCategoryCollection;
}

- (UILabel *)labelGroup {
    if (!_labelGroup) {
        _labelGroup = [[UILabel alloc] initWithFrame:CGRectZero];
        _labelGroup.text = @"Your Groups";
        _labelGroup.textColor = [UIColor blueColor];
        _labelGroup.font = [UIFont boldSystemFontOfSize:22.0];
    }
    return _labelGroup;
}

- (UILabel *)labelShopCategory {
    if (!_labelShopCategory) {
        _labelShopCategory = [[UILabel alloc] initWithFrame:CGRectZero];
        _labelShopCategory.text = @"Shop Categories";
        _labelShopCategory.textColor = [UIColor blueColor];
        _labelShopCategory.font = [UIFont boldSystemFontOfSize:22.0];
    }
    return _labelShopCategory;
}

- (UIButton *)buttonWishList {
    if (!_buttonWishList) {
        _buttonWishList = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_buttonWishList setTitle:@"+ Add To Wish List" forState:UIControlStateNormal];
        [_buttonWishList setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
        _buttonWishList.titleLabel.font = [UIFont boldSystemFontOfSize:16.0];
        
        _buttonWishList.backgroundColor = [UIColor colorWithHEX:0x00B05A];
        
        _buttonWishList.layer.cornerRadius = 10; // this value vary as per your desire
        _buttonWishList.clipsToBounds = YES;
        
        _buttonWishList.contentEdgeInsets = UIEdgeInsetsMake(5, 20, 5, 20);
        
        [_buttonWishList addTarget:self action:@selector(buttonWishList_TouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _buttonWishList;
}

#pragma mark - Private API
- (void)setupMainMenuViewController {
    SWRevealViewController *revealController = [self revealViewController];
    
    [revealController panGestureRecognizer];
    [revealController tapGestureRecognizer];
    
    self.labelTitle.text = @"Welcome Back!";
    
    UIBarButtonItem *revealButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"reveal-icon.png"]
        style:UIBarButtonItemStylePlain target:revealController action:@selector(revealToggle:)];
    
    self.navigationItem.leftBarButtonItem = revealButtonItem;
    
    // WishList Button
    [self.scrollView addSubview:self.buttonWishList];
    [self.buttonWishList mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.top.equalTo(self.labelTitle.mas_bottom).offset(5);
    }];
    
    [self.scrollView addSubview:self.labelGroup];
    [self.labelGroup mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.buttonWishList.mas_bottom).offset(30);
        make.left.equalTo(self.view.mas_left).offset(20);
        make.width.equalTo(self.view.mas_width);
    }];
    
    [self.scrollView addSubview:self.groupCollection];
    [self.groupCollection mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.labelGroup.mas_bottom);
        make.left.equalTo(self.view.mas_left);
        make.width.equalTo(self.view.mas_width);
    }];
    
    [self.scrollView addSubview:self.labelShopCategory];
    [self.labelShopCategory mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.groupCollection.mas_bottom).offset(30);
        make.left.equalTo(self.view.mas_left).offset(20);
        make.width.equalTo(self.view.mas_width);
    }];
    
    [self.scrollView addSubview:self.shopCategoryCollection];
    [self.shopCategoryCollection mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.labelShopCategory.mas_bottom);
        make.left.equalTo(self.view.mas_left);
        make.width.equalTo(self.view.mas_width);
    }];
    
    self.groupCollection.viewController = self;
    self.shopCategoryCollection.viewController = self;
    
    self.groupCollection.groups = self.arrayGroups;
    self.shopCategoryCollection.categories = self.arrayShopCategories;
}

- (void)buttonWishList_TouchUpInside:(id)sender {
    [self navigateToWishList];
}

#pragma mark Navigation
- (void)navigateToWishList {
    SWRevealViewController *revealController = self.revealViewController;
    
    UIViewController *newFrontController = [[WishListViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:newFrontController];
    [revealController pushFrontViewController:navigationController animated:YES];
    [revealController setFrontViewPosition:FrontViewPositionLeft animated:YES];
}ds


#pragma mark - Public API



#pragma mark - Delegate Methods
- (void)homeGroupListSectionControllerDidSelectGroup:(SecretSantaGroup *)group {
    // UPDATE
}

- (void)homeShopCategorySectionControllerDidSelectCategory:(NSString *)category {
    // UPDATE
}


@end
