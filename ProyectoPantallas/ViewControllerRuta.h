//
//  ViewControllerRuta.h
//  ProyectoPantallas
//
//  Created by Mayra Ruiz on 20/10/15.
//  Copyright © 2015 José Antonio Ruiz del Moral Cervantes. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewControllerRuta : UIViewController < UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource>


- (IBAction)btnRuta:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *tfOrigen;
@property (strong, nonatomic) IBOutlet UITextField *tfDestino;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerLugar;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerLugar2;
@property (strong, nonatomic) NSArray *arrLugar;
@property (strong,nonatomic) NSString *origen;
@property(strong,nonatomic) NSString *destino;
@property(nonatomic,strong) NSString *discapacidad;


@end
