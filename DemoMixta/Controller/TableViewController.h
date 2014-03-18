//
//  TableViewController.h
//  DemoMixta
//
//  Created by Javier Arias on 12/03/14.
//  Copyright (c) 2014 Javier Arias. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController
@property (nonatomic) NSArray *timeZoneNames;
@property (weak, nonatomic) IBOutlet UITableView *viewTable;

@end
