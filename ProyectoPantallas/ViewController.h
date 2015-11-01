//
//  ViewController.h
//  ProyectoPantallas
//
//  Created by José Antonio Ruiz del Moral Cervantes on 10/5/15.
//  Copyright © 2015 José Antonio Ruiz del Moral Cervantes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController < UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource>

- (IBAction)btnDiscapacidad:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *txFieldDiscapacidad;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerDiscapacidad;
@property (strong, nonatomic) NSArray *arregloDiscapacidad;


@end

