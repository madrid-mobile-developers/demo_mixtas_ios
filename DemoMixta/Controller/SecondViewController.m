//
//  SecondViewController.m
//  XDKAirMenu
//
//  Created by Javier Arias on 12/02/14.
//  Copyright (c) 2014 Javier Arias. All rights reserved.
//

#import "SecondViewController.h"
#import "XDKAirMenuController.h"
#import "CustomAnnotation.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Coordenadas de la Universidad.
    CLLocationCoordinate2D initialLocation;
    initialLocation.latitude = 40.4642496;
    initialLocation.longitude= -3.6218425;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(initialLocation, 2000, 2000);
    
    [self.mapView setRegion:region animated:YES];
    
    CGFloat newLat = 40.4642496;
    CGFloat newLon = -3.6218425;
    
    CLLocationCoordinate2D newCoord = {newLat, newLon};
    
    CustomAnnotation *annotation = [[CustomAnnotation alloc]initWithTitle: @"Sanitas, S.A. de Seguros Oficinas Centrales"
                                                                 subtitle: @"Calle Ribera del Loira, 52                                    28042 Madrid"
                                                            andCoordinate:newCoord];
    [self.mapView addAnnotation:annotation];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)menuButtonPressed:(id)sender
{
    XDKAirMenuController *menu = [XDKAirMenuController sharedMenu];
    
    if (menu.isMenuOpened)
        [menu closeMenuAnimated];
    else
        [menu openMenuAnimated];
}


@end
