//
//  TableViewController.h
//  ProyectoPantallas
//
//  Created by Mayra Ruiz on 07/11/15.
//  Copyright © 2015 José Antonio Ruiz del Moral Cervantes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController

@property (strong,nonatomic) NSString *destOrigen;
@property(strong,nonatomic) NSString *destDestino;
@property(strong,nonatomic) NSString * destDiscapacidad;

- (NSDictionary *) funcionRegresaDiccionario: (NSString *) discap withOrigen: (NSString *) origen withDestino: (NSString *) destino;

@end
