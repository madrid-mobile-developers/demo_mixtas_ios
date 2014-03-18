//
//  ViewController.m
//  XDKAirMenu
//
//  Created by Javier Arias on 12/02/14.
//  Copyright (c) 2014 Javier Arias. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <XDKAirMenuDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end


@implementation ViewController

- (void)awakeFromNib
{
    [super awakeFromNib];        
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.airMenuController = [XDKAirMenuController sharedMenu];
    self.airMenuController.airDelegate = self;
    //self.airMenuController.isMenuOnRight = TRUE;

    [self.view addSubview:self.airMenuController.view];
    [self addChildViewController:self.airMenuController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"TableViewSegue"])
    {
        self.tableView = ((UITableViewController*)segue.destinationViewController).tableView;
    }
}


#pragma mark - XDKAirMenuDelegate

- (UIViewController*)airMenu:(XDKAirMenuController*)airMenu viewControllerAtIndexPath:(NSIndexPath*)indexPath
{
    UIStoryboard *storyboard = self.storyboard;
    UIViewController *vc = nil;
    
    vc.view.autoresizesSubviews = TRUE;
    vc.view.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    
    if (indexPath.row == 0)
        vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController1"];
    else if (indexPath.row == 1)
        vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController3"];
    
    return vc;
}

- (UITableView*)tableViewForAirMenu:(XDKAirMenuController*)airMenu
{
    return self.tableView;
}

@end
