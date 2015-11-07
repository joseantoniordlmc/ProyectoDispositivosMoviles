//
//  ViewControllerRuta.m
//  ProyectoPantallas
//
//  Created by Mayra Ruiz on 20/10/15.
//  Copyright © 2015 José Antonio Ruiz del Moral Cervantes. All rights reserved.
//

#import "ViewControllerRuta.h"
#import "ViewControllerShowRutas.h"

@interface ViewControllerRuta ()
@end

@implementation ViewControllerRuta

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addPickerLugar];
    [self.pickerLugar removeFromSuperview];
    [self addpickerLugar2];
    [self.pickerLugar2 removeFromSuperview];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addPickerLugar {
    self.arrLugar = [[NSArray alloc]initWithObjects:@" ", @"Aulas 1", @"Aulas 2", @"Aulas 3", @"Aulas 4", @"Aulas 6", @"Aulas 7", @"Biotecnología", @"Centro Estudiantil", @"FoodBox", @"Centrales", @"Carreta",@"El Estudiante", @"Learning Commons", @"Cetec", @"Cedes", @"Domo acuatico", nil];
   // self.tfOrigen= [[UITextField alloc]initWithFrame:CGRectMake(10,100,300,30)];
    self.tfOrigen.delegate = self;
    [self.view addSubview: self.tfOrigen];
    [self.tfOrigen setPlaceholder: @"Elige tu localización"];
    
    self.pickerLugar.tag = 1;
    
    self.pickerLugar = [[UIPickerView alloc]init];
    self.pickerLugar.dataSource = self;
    self.pickerLugar.delegate = self;
    self.pickerLugar.showsSelectionIndicator = YES;
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Done"
                                   style:UIBarButtonItemStyleDone
                                   target:self
                                   action: @selector(done)];
    
    //  [doneButton addTarget:self action:@selector(done)
    
    
    UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:
                          CGRectMake(0, self.view.frame.size.height-
                                     _pickerLugar.frame.size.height-50, 320, 50)];
    [toolBar setBarStyle:UIBarStyleDefault];
    NSArray *toolbarItems = [NSArray arrayWithObjects:doneButton,nil];
    [toolBar setItems:toolbarItems];
    self.tfOrigen.inputView = self.pickerLugar;
    self.tfOrigen.inputAccessoryView = toolBar;
    
}

-(void)addpickerLugar2 {
    self.arrLugar = [[NSArray alloc]initWithObjects:@" ", @"Aulas 1", @"Aulas 2", @"Aulas 3", @"Aulas 4", @"Aulas 6", @"Aulas 7", @"Biotecnología", @"Centro Estudiantil", @"FoodBox", @"Centrales", @"Carreta",@"El Estudiante", @"Learning Commons", @"Cetec", @"Cedes", @"Domo acuatico", nil];
    //self.tfDestino = [[UITextField alloc]initWithFrame:CGRectMake(10,100,300,30)];
    self.tfDestino.delegate = self;
    [self.view addSubview: self.tfDestino];
    [self.tfDestino setPlaceholder:@"Elige tu destino"];
    
    self.pickerLugar2.tag = 2;
    
    self.pickerLugar2 = [[UIPickerView alloc]init];
    self.pickerLugar2.dataSource = self;
    self.pickerLugar2.delegate = self;
    self.pickerLugar2.showsSelectionIndicator = YES;
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Done"
                                   style:UIBarButtonItemStyleDone
                                   target:self
                                   action: @selector(done)];
    
    //  [doneButton addTarget:self action:@selector(done)
    
    
    UIToolbar *toolBar2 = [[UIToolbar alloc]initWithFrame:
                          CGRectMake(0, self.view.frame.size.height-
                                     _pickerLugar2.frame.size.height-50, 320, 50)];
    
    [toolBar2 setBarStyle:UIBarStyleDefault];
    NSArray *toolbarItems = [NSArray arrayWithObjects:doneButton,nil];
    [toolBar2 setItems:toolbarItems];
    self.tfDestino.inputView = self.pickerLugar2;
    self.tfDestino.inputAccessoryView = toolBar2;
    
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
    return [self.arrLugar count];
}

#pragma mark- Picker View Delegate

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:
(NSInteger)row inComponent:(NSInteger)component{
    
    if (pickerView == self.pickerLugar)
        [self.tfOrigen setText:[self.arrLugar objectAtIndex:row]];
    if (pickerView == self.pickerLugar2)
        [self.tfDestino setText:[self.arrLugar objectAtIndex:row]];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:
(NSInteger)row forComponent:(NSInteger)component{
    
    return [self.arrLugar objectAtIndex:row];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
   if ([[segue identifier] isEqualToString:@"mostrarRuta"]) {
       
       ViewControllerShowRutas *viewRutas = [segue destinationViewController];
       
       self.origen = self.tfOrigen.text;
       self.destino = self.tfDestino.text;
       viewRutas.destOrigen = self.origen;
       viewRutas.destDestino = self.destino;
   }
}

@end
