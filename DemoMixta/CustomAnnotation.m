//
//  CustomAnnotation.m
//  techfestDemo
//
//  Created by Javier Arias on 12/02/14.
//  Copyright (c) 2014 Javier Arias. All rights reserved.
//

#import "CustomAnnotation.h"

@implementation CustomAnnotation
// Hacemos synthesize
@synthesize title, subtitle, coordinate;

// Implementamos el método de inicialización del objeto.
- (id)initWithTitle:(NSString *)aTitle subtitle:(NSString*)aSubtitle andCoordinate:(CLLocationCoordinate2D)coord
{
	self = [super init];
	title = aTitle;
    subtitle = aSubtitle;
	coordinate = coord;
	return self;
}

@end