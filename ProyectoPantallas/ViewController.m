//
//  ViewController.m
//  ProyectoPantallas
//
//  Created by José Antonio Ruiz del Moral Cervantes on 10/5/15.
//  Copyright © 2015 José Antonio Ruiz del Moral Cervantes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//@property (nonatomic,strong) NSArray *arrayOpciones;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIPickerView * picker = [UIPickerView new];
    picker.delegate = self;
    picker.dataSource = self;
    picker.showsSelectionIndicator = YES;
    [self.view addSubview:picker];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnDiscapacidad:(id)sender {
    //TODO: Guardar tipo de discapacidad

}

- (IBAction) unwindEligeDiscapacidad: (UIStoryboardSegue *) segue {
    //Se utiliza para regresar, no se ejecuta ninguna acción
}




- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 3;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    NSString * title = nil;
    switch(row) {
        case 0:
            title = @"Silla de Ruedas";
            break;
        case 1:
            title = @"Opcion 2";
            break;
        case 2:
            title = @"Opcion 3";
            break;
    }
    return title;
}




@end
