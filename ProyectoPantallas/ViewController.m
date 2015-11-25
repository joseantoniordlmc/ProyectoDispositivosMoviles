//
//  ViewController.m
//  ProyectoPantallas
//
//  Created by José Antonio Ruiz del Moral Cervantes on 10/5/15.
//  Copyright © 2015 José Antonio Ruiz del Moral Cervantes. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerRuta.h"

@interface ViewController ()

//@property (nonatomic,strong) NSArray *arrayOpciones;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self addPickerDiscapacidad];
    [self.pickerDiscapacidad removeFromSuperview];
}

/*
 - (void)viewDidLoad {
 [super viewDidLoad];
 UIPickerView * picker = [UIPickerView new];
 picker.delegate = self;
 picker.dataSource = self;
 picker.showsSelectionIndicator = YES;
 [self.view addSubview:picker];
 
 }
 */

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


-(void)addPickerDiscapacidad{
    self.arregloDiscapacidad = [[NSArray alloc]initWithObjects:@" ", @"Silla de Ruedas", @"Bastón", @"Muletas", @"Andador", nil];
    //self.txFieldDiscapacidad = [[UITextField alloc]initWithFrame:CGRectMake(10,100,300,30)];
    self.txFieldDiscapacidad.delegate = self;
    [self.view addSubview: self.txFieldDiscapacidad];
    [self.txFieldDiscapacidad setPlaceholder:@"Elige tu discapacidad"];
    self.pickerDiscapacidad = [[UIPickerView alloc]init];
    self.pickerDiscapacidad.dataSource = self;
    self.pickerDiscapacidad.delegate = self;
    self.pickerDiscapacidad.showsSelectionIndicator = YES;
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Done"
                                   style:UIBarButtonItemStyleDone
                                   target:self
                                   action: @selector(done)];
    
  //  [doneButton addTarget:self action:@selector(done)
     
    
    UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:
                          CGRectMake(0, self.view.frame.size.height-
                                     _pickerDiscapacidad.frame.size.height-50, 320, 50)];
    [toolBar setBarStyle:UIBarStyleDefault];
    NSArray *toolbarItems = [NSArray arrayWithObjects:doneButton,nil];
    [toolBar setItems:toolbarItems];
    self.txFieldDiscapacidad.inputView = self.pickerDiscapacidad;
    self.txFieldDiscapacidad.inputAccessoryView = toolBar;
    
}

// Método para terminar de editar el picker
- (void) done {
    [self.view endEditing:YES];
}

#pragma mark - Picker View Data source
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    return [self.arregloDiscapacidad count];
}

#pragma mark- Picker View Delegate

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:
(NSInteger)row inComponent:(NSInteger)component{
    [self.txFieldDiscapacidad setText:[self.arregloDiscapacidad objectAtIndex:row]];
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:
(NSInteger)row forComponent:(NSInteger)component{
    return [self.arregloDiscapacidad objectAtIndex:row];
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if(self.txFieldDiscapacidad.text == nil){
        
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Aviso"
                                                                       message:@"Debes elegir una de las opciones."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        
        
    } else
    
    if ([[segue identifier] isEqualToString:@"ruta"] && self.txFieldDiscapacidad.text != nil) {
        
        ViewControllerRuta *viewRutas = [segue destinationViewController];
        
        viewRutas.discapacidad = self.txFieldDiscapacidad.text;
    }
}



@end
