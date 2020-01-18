//
//  WishListViewController.m
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 1/18/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import "WishListViewController.h"

// Delegates

// Utilities
#import <SWRevealViewController/SWRevealViewController.h>
#import <Masonry/Masonry.h>

// Globals

// Classes

// Classes - Models

// Classes - Views

// Classes - View Controllers

// Class Extensions
#import "UIColor+ExtensionMethods.h"

// Definitions


@interface WishListViewController ()

@property (strong, nonatomic) UILabel *labelTitle;

@end



@implementation WishListViewController


#pragma mark - Initialization
- (void)customInitWishListViewController {
    
}
- (instancetype)init {
    if (self = [super init]) {
        [self customInitWishListViewController];
        
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self customInitWishListViewController];
        
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
    self.title = @"Wish List";
    
    // Setup
    [self setupWishListViewController];
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
        _labelTitle.text = @"Your Wish List";
        _labelTitle.textColor = [UIColor colorWithHEX:0x0082BC];
        _labelTitle.font = [UIFont boldSystemFontOfSize:18.0];
    }
    return _labelTitle;
}


#pragma mark - Private API
- (void)setupWishListViewController {
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
}



#pragma mark - Public API



#pragma mark - Delegate Methods



@end
