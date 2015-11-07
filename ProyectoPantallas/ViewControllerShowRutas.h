//
//  ViewControllerShowRutas.h
//  ProyectoPantallas
//
//  Created by Mayra Ruiz on 04/11/15.
//  Copyright © 2015 José Antonio Ruiz del Moral Cervantes. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewControllerShowRutas : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tfOrigen;
@property (weak, nonatomic) IBOutlet UITextField *tfDestino;

@property (strong,nonatomic) NSString *destOrigen;
@property(strong,nonatomic) NSString *destDestino;

- (NSDictionary *) funcionRegresaDiccionario: (NSString *) discapacidad withOrigen:(NSString *) origen withDestino: (NSString *) dest;

@end
