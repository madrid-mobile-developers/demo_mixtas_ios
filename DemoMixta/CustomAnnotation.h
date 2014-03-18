//
//  CustomAnnotation.h
//  techfestDemo
//
//  Created by Javier Arias on 12/02/14.
//  Copyright (c) 2014 Javier Arias. All rights reserved.
//

#import <UIKit/UIKit.h>
// Importamos el framework
#import <MapKit/MapKit.h>

// Implementamos el protocolo MKAnnotation
@interface CustomAnnotation : NSObject  <MKAnnotation> {
    
    // Creamos un título
    NSString *title;
    // Declaramos un subtítulo
    NSString *subtitle;
    // Y una coordenada
    CLLocationCoordinate2D coordinate;
    
}
// Definimos sus propiedades
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

// Y el método de inicialización
- (id)initWithTitle:(NSString *)aTitle subtitle:(NSString*)aSubtitle andCoordinate:(CLLocationCoordinate2D)coord;


@end