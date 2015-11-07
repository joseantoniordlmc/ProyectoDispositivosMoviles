//
//  ViewControllerShowRutas.m
//  ProyectoPantallas
//
//  Created by Mayra Ruiz on 04/11/15.
//  Copyright © 2015 José Antonio Ruiz del Moral Cervantes. All rights reserved.
//

#import "ViewControllerShowRutas.h"

@interface ViewControllerShowRutas ()

@end

@implementation ViewControllerShowRutas

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tfDestino.text = self.destDestino;
    self.tfOrigen.text = self.destOrigen;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) sendData: (NSString *) origen withDestino: (NSString *) destino {
    self.tfOrigen.text = origen;
    self.tfDestino.text = destino;
}


/*- (NSDictionary *) funcionRegresaDiccionario: (NSString *) discapacidad withOrigen:(NSString *) origen withDestino: (NSString *) dest {
    
    
    
    
}*/


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
