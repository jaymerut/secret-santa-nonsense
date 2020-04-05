//
//  SideMenuViewController.m
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 1/17/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#import "SideMenuViewController.h"

// Delegates

// Utilities
#import "SWRevealViewController.h"
#import <SafariServices/SafariServices.h>
#import <Masonry/Masonry.h>

// Globals

// Classes

// Classes - Models

// Classes - Views

// Classes - View Controllers
#import "MainMenuViewController.h"
#import "GiftExchangesViewController.h"
#import "WishListViewController.h"
#import "AccountViewController.h"

// Class Extensions

// Definitions


@interface SideMenuViewController ()

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) UILabel *menuTitle;

@end



@implementation SideMenuViewController


#pragma mark - Initialization
- (void)customInitSideMenuViewController {
    
}
- (instancetype)init {
    if (self = [super init]) {
        [self customInitSideMenuViewController];
        
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self customInitSideMenuViewController];
        
    }
    return self;
}



#pragma mark - UIViewController Lifecycle Methods
- (void)loadView {
    [super loadView];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.navigationController.navigationBar.topItem.title = @"The Elf Menus";
    //self.navigationItem.titleView = self.menuTitle;
    [self.navigationItem setTitle:@"MenuTitle"];
    
    self.view.backgroundColor = UIColor.whiteColor;

    // add to canvas
    [self.view addSubview:self.tableView];
    
    // Setup
    [self setupSideMenuViewController];
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
- (UITableView *)tableView {
    if (!_tableView) {
        UITableView *view = [[UITableView alloc] initWithFrame:self.view.bounds];
        view.delegate = self;
        view.dataSource = self;
        view.tableFooterView = nil;
        _tableView = view;
    }
    return _tableView;
}

- (UILabel *)menuTitle {
    if (!_menuTitle) {
        _menuTitle = [[UILabel alloc] initWithFrame:CGRectZero];
        
        _menuTitle.textAlignment = NSTextAlignmentLeft;
        _menuTitle.text = @"Menu";
    }
    return _menuTitle;
}

#pragma mark - Private API
- (void)setupSideMenuViewController {

}

#pragma mark Navigation
- (void)navigateToSafariWebView:(NSString *)url {
    SFSafariViewController *destinationVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:url]];
    destinationVC.modalPresentationStyle = UIModalPresentationOverFullScreen;
    
    //destinationVC.preferredBarTintColor = AppBundle.current.colors.navigationBarBarTintColor;
    //destinationVC.preferredControlTintColor = AppBundle.current.colors.navigationBarTintColor;
    
    [self presentViewController:destinationVC animated:YES completion:nil];
}

#pragma mark - Public API



#pragma mark - Delegate Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    NSInteger row = indexPath.row;

    if (nil == cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
    }
    
    NSString *text = nil;
    if (row == 0)
    {
        text = @"Main Menu";
    }
    if (row == 1)
    {
        text = @"Account";
    }
    else if (row == 2)
    {
        text = @"Gift Exchanges";
    }
    else if (row == 3)
    {
        text = @"Wish List";
    }
    else if (row == 4)
    {
        text = @"Shop";
    }

    cell.textLabel.text = NSLocalizedString( text,nil );
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Grab a handle to the reveal controller, as if you'd do with a navigtion controller via self.navigationController.
    SWRevealViewController *revealController = self.revealViewController;
    
    // selecting row
    NSInteger row = indexPath.row;
    
    // if we are trying to push the same row or perform an operation that does not imply frontViewController replacement
    // we'll just set position and return
    UIViewController *newFrontController = nil;
    
    if (row == 0)
    {
        newFrontController = [[MainMenuViewController alloc] init];
        UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:newFrontController];
        [revealController pushFrontViewController:navigationController animated:YES];
        [revealController setFrontViewPosition:FrontViewPositionLeft animated:YES];
        return;
    }
    else if (row == 1)
    {
        newFrontController = [[AccountViewController alloc] init];
        UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:newFrontController];
        [revealController pushFrontViewController:navigationController animated:YES];
        [revealController setFrontViewPosition:FrontViewPositionLeft animated:YES];
        return;
    }
    else if (row == 2)
    {
        newFrontController = [[GiftExchangesViewController alloc] init];
        UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:newFrontController];
        [revealController pushFrontViewController:navigationController animated:YES];
        [revealController setFrontViewPosition:FrontViewPositionLeft animated:YES];
        return;
    }
    else if (row == 3)
    {
        newFrontController = [[WishListViewController alloc] init];
        UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:newFrontController];
        [revealController pushFrontViewController:navigationController animated:YES];
        [revealController setFrontViewPosition:FrontViewPositionLeft animated:YES];
        return;
    }
    else if (row == 4)
    {
        [self navigateToSafariWebView:@"https://www.amazon.com"];
        return;
    }
}


@end
