//
//  AccountViewController.m
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 1/18/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import "AccountViewController.h"

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


@interface AccountViewController ()


@end



@implementation AccountViewController


#pragma mark - Initialization
- (void)customInitAccountViewController {
    
}
- (instancetype)init {
    if (self = [super init]) {
        [self customInitAccountViewController];
        
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self customInitAccountViewController];
        
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
    [self setTitle:@"Account"];
    
    // Setup
    [self setupAccountViewController];
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


#pragma mark - Private API
- (void)setupAccountViewController {
    SWRevealViewController *revealController = [self revealViewController];
    
    [revealController panGestureRecognizer];
    [revealController tapGestureRecognizer];
    
    self.labelTitle.text = @"Your Account Information";
    
    UIBarButtonItem *revealButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"reveal-icon.png"]
        style:UIBarButtonItemStylePlain target:revealController action:@selector(revealToggle:)];
    
    self.navigationItem.leftBarButtonItem = revealButtonItem;
}



#pragma mark - Public API



#pragma mark - Delegate Methods



@end
