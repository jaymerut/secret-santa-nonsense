//
//  GiftExchangesViewController.m
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 1/18/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import "GiftExchangesViewController.h"

// Delegates

// Utilities
#import <SWRevealViewController/SWRevealViewController.h>
#import <Masonry/Masonry.h>

// Globals

// Classes

// Classes - Models

// Classes - Views

// Classes - View Controllers
#import "WishListViewController.h"
#import "SideMenuViewController.h"

// Class Extensions
#import "UIColor+ExtensionMethods.h"

// Definitions


@interface GiftExchangesViewController ()

@property (strong, nonatomic) UILabel *labelTitle;
@property (strong, nonatomic) UIButton *buttonWishList;

@end



@implementation GiftExchangesViewController


#pragma mark - Initialization
- (void)customInitGiftExchangesViewController {
    
}
- (instancetype)init {
    if (self = [super init]) {
        [self customInitGiftExchangesViewController];
        
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self customInitGiftExchangesViewController];
        
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
    [self setTitle:@"Gift Exchanges"];
    
    // Setup
    [self setupGiftExchangesViewController];
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
- (UILabel *)labelTitle {
    if (!_labelTitle) {
        _labelTitle = [[UILabel alloc] initWithFrame:CGRectZero];
        _labelTitle.text = @"Your Gift Exchanges";
        _labelTitle.textColor = [UIColor colorWithHEX:0x0082BC];
        _labelTitle.font = [UIFont boldSystemFontOfSize:18.0];
    }
    return _labelTitle;
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
- (void)setupGiftExchangesViewController {
    SWRevealViewController *revealController = [self revealViewController];
    
    [revealController panGestureRecognizer];
    [revealController tapGestureRecognizer];
    
    UIBarButtonItem *revealButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"reveal-icon.png"]
        style:UIBarButtonItemStylePlain target:revealController action:@selector(revealToggle:)];
    
    self.navigationItem.leftBarButtonItem = revealButtonItem;
    
    // Title Label
    [self.view addSubview:self.labelTitle];
    [self.labelTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.top.equalTo(self.view.mas_top).inset(100);
    }];
    
    // WishList Button
    [self.view addSubview:self.buttonWishList];
    [self.buttonWishList mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.top.equalTo(self.labelTitle.mas_bottom).offset(5);
    }];
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
}



#pragma mark - Public API



#pragma mark - Delegate Methods



@end
