//
//  ViewControllerShowRutas.h
//  ProyectoPantallas
//
//  Created by Mayra Ruiz on 04/11/15.
//  Copyright © 2015 José Antonio Ruiz del Moral Cervantes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerRuta.h"


@interface ViewControllerShowRutas : UIViewController <ProtocoloMuestraDatos>

@property (weak, nonatomic) IBOutlet UITextField *tfOrigen;
@property (weak, nonatomic) IBOutlet UITextField *tfDestino;

@end
