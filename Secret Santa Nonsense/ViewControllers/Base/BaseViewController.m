//
//  BaseViewController.m
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 4/5/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import "BaseViewController.h"

// Delegates

// Utilities
#import <Masonry/Masonry.h>

// Globals

// Classes

// Classes - Models

// Classes - Views

// Classes - View Controllers

// Class Extensions

// Definitions
#import "UIColor+ExtensionMethods.h"


@interface BaseViewController ()


@end



@implementation BaseViewController


#pragma mark - Initialization
- (void)customInitBaseViewController {
    
}
- (instancetype)init {
    if (self = [super init]) {
        [self customInitBaseViewController];
        
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self customInitBaseViewController];
        
    }
    return self;
}



#pragma mark - UIViewController Lifecycle Methods
- (void)loadView {
    [super loadView];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Setup
    [self setupBaseViewController];
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
- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [UIScrollView new];
    }
    return _scrollView;
}
- (UIView *)footerView {
    if (!_footerView) {
        _footerView = [UIView new];
        _footerView.backgroundColor = [UIColor cyanColor];
    }
    return _footerView;
}

- (UILabel *)labelTitle {
    if (!_labelTitle) {
        _labelTitle = [[UILabel alloc] initWithFrame:CGRectZero];
        _labelTitle.text = @"";
        _labelTitle.textColor = [UIColor colorWithHEX:0x0082BC];
        _labelTitle.font = [UIFont boldSystemFontOfSize:18.0];
    }
    return _labelTitle;
}

#pragma mark - Private API
- (void)setupBaseViewController {
    [self.view addSubview:self.footerView];
    [self.footerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.bottom.equalTo(self.view);
        make.height.equalTo(@(90));
    }];
    
    [self.view addSubview:self.scrollView];
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.bottom.equalTo(self.footerView.mas_top);
    }];
    
    // Title Label
    [self.scrollView addSubview:self.labelTitle];
    [self.labelTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.top.equalTo(self.view.mas_top).inset(100);
    }];
}


#pragma mark - Public API



#pragma mark - Delegate Methods



@end
