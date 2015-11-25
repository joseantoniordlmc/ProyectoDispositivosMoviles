//
//  ViewControllerRuta.m
//  ProyectoPantallas
//
//  Created by Mayra Ruiz on 20/10/15.
//  Copyright © 2015 José Antonio Ruiz del Moral Cervantes. All rights reserved.
//

#import "ViewControllerRuta.h"
#import "TableViewController.h"
#import "PESGraphNode.h"

@interface ViewControllerRuta ()

//Se define diccionario para la busqueda de nodos
@property NSMutableDictionary *nodosDic;

//Se definen los nodos disponibles para los edificios
@property PESGraphNode *unoNode;
@property PESGraphNode *dosNode;
@property PESGraphNode *tresNode;
@property PESGraphNode *cuatroNode;
@property PESGraphNode *cincoNode;
@property PESGraphNode *seisNode;
@property PESGraphNode *sieteNode;
@property PESGraphNode *ochoNode;
@property PESGraphNode *nueveNode;
@property PESGraphNode *diezNode;
@property PESGraphNode *onceNode;
@property PESGraphNode *doceNode;
@property PESGraphNode *treceNode;
@property PESGraphNode *catorceNode;
@property PESGraphNode *quinceNode;
@property PESGraphNode *dieciseisNode;
@property PESGraphNode *diecisieteNode;
@property PESGraphNode *dieciochoNode;
@property PESGraphNode *diecinueveNode;
@property PESGraphNode *veinteNode;
@property PESGraphNode *veintiunoNode;
@property PESGraphNode *veintidosNode;
@property PESGraphNode *veintitresNode;
@property PESGraphNode *veinticuatroNode;
@property PESGraphNode *veinticincoNode;
@property PESGraphNode *veintiseisNode;
@property PESGraphNode *veintisieteNode;
@property PESGraphNode *veintiochoNode;
@property PESGraphNode *veintinueveNode;
@property PESGraphNode *treintaNode;

@end

@implementation ViewControllerRuta

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Se inicializan los nodos (Los edificios que son o pueden ser accesibles)
    self.unoNode = [PESGraphNode nodeWithIdentifier:@"1" nodeWithTitle:@"Entrada Rectoría"];
    self.dosNode = [PESGraphNode nodeWithIdentifier:@"2" nodeWithTitle:@"Entrada Lago Patos"];
    self.tresNode = [PESGraphNode nodeWithIdentifier:@"3" nodeWithTitle:@"Entrada CIAP"];
    self.cuatroNode = [PESGraphNode nodeWithIdentifier:@"4" nodeWithTitle:@"Entrada Biotecnología"];
    self.cincoNode = [PESGraphNode nodeWithIdentifier:@"5" nodeWithTitle:@"Entrada Estadio"];
    self.seisNode = [PESGraphNode nodeWithIdentifier:@"6" nodeWithTitle:@"Entrada Centro Estudiantil / Aulas 4"];
    self.sieteNode = [PESGraphNode nodeWithIdentifier:@"7" nodeWithTitle:@"Entrada Centro Estudiantil Sur"];
    self.ochoNode = [PESGraphNode nodeWithIdentifier:@"8" nodeWithTitle:@"Entrada Centro Estudiantil / Bancos"];
    self.nueveNode = [PESGraphNode nodeWithIdentifier:@"9" nodeWithTitle:@"Rectoría"];
    self.diezNode = [PESGraphNode nodeWithIdentifier:@"10" nodeWithTitle:@"Aulas 1"];
    self.onceNode = [PESGraphNode nodeWithIdentifier:@"11" nodeWithTitle:@"Aulas 2"];
    self.doceNode = [PESGraphNode nodeWithIdentifier:@"12" nodeWithTitle:@"Aulas 3"];
    self.treceNode = [PESGraphNode nodeWithIdentifier:@"13" nodeWithTitle:@"Aulas 4"];
    self.catorceNode = [PESGraphNode nodeWithIdentifier:@"14" nodeWithTitle:@"Centro de Biotecnología / Aulas 5"];
    self.quinceNode = [PESGraphNode nodeWithIdentifier:@"15" nodeWithTitle:@"Aulas 6"];
    self.dieciseisNode = [PESGraphNode nodeWithIdentifier:@"16" nodeWithTitle:@"Aulas 7"];
    self.diecisieteNode = [PESGraphNode nodeWithIdentifier:@"17" nodeWithTitle:@"CETEC"];
    self.dieciochoNode = [PESGraphNode nodeWithIdentifier:@"18" nodeWithTitle:@"Centrales 1 / Learning Commons"];
    self.diecinueveNode = [PESGraphNode nodeWithIdentifier:@"19"  nodeWithTitle:@"Centrales 2 / Administrativo"];
    self.veinteNode = [PESGraphNode nodeWithIdentifier:@"20" nodeWithTitle:@"Centrales Cuenta de Alumno"];
    self.veintiunoNode = [PESGraphNode nodeWithIdentifier:@"21"  nodeWithTitle:@"Centrales Cafetería"];
    self.veintidosNode = [PESGraphNode nodeWithIdentifier:@"22"  nodeWithTitle:@"Centro Estudiantil"];
    self.veintitresNode = [PESGraphNode nodeWithIdentifier:@"23" nodeWithTitle:@"Borrego / Food Box"];
    self.veinticuatroNode = [PESGraphNode nodeWithIdentifier:@"24" nodeWithTitle:@"Carreta"];
    self.veinticincoNode = [PESGraphNode nodeWithIdentifier:@"25"  nodeWithTitle:@"Domo Acuático"];
    self.veintiseisNode = [PESGraphNode nodeWithIdentifier:@"26" nodeWithTitle:@"DAF"];
    self.veintisieteNode = [PESGraphNode nodeWithIdentifier:@"27" nodeWithTitle:@"ATLI"];
    self.veintiochoNode = [PESGraphNode nodeWithIdentifier:@"28" nodeWithTitle:@"Gimnasio"];
    self.veintinueveNode = [PESGraphNode nodeWithIdentifier:@"29" nodeWithTitle:@"Jubileo"];
    self.treintaNode = [PESGraphNode nodeWithIdentifier:@"30"  nodeWithTitle:@"CIAP"];
    
    //Crea Diccionarío de Seleccion de Nodos
    self.nodosDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                     self.unoNode,@"1"
                     ,self.dosNode,@"2"
                     ,self.tresNode,@"3"
                     ,self.cuatroNode,@"4"
                     ,self.cincoNode,@"5"
                     ,self.seisNode,@"6"
                     ,self.sieteNode,@"7"
                     ,self.ochoNode,@"8"
                     ,self.nueveNode,@"9"
                     ,self.diezNode,@"10"
                     ,self.onceNode,@"11"
                     ,self.doceNode,@"12"
                     ,self.treceNode,@"13"
                     ,self.catorceNode,@"14"
                     ,self.quinceNode,@"15"
                     ,self.dieciseisNode,@"16"
                     ,self.diecisieteNode,@"17"
                     ,self.dieciochoNode,@"18"
                     ,self.diecinueveNode,@"19"
                     ,self.veinteNode,@"20"
                     ,self.veintiunoNode,@"21"
                     ,self.veintidosNode,@"22"
                     ,self.veintitresNode,@"23"
                     ,self.veinticuatroNode,@"24"
                     ,self.veinticincoNode,@"25"
                     ,self.veintiseisNode,@"26"
                     ,self.veintisieteNode,@"27"
                     ,self.veintiochoNode,@"28"
                     ,self.veintinueveNode,@"29"
                     ,self.treintaNode,@"30", nil];
    
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
    
    NSArray *allKeys = [self.nodosDic allKeys];
    
    return [allKeys count];
}

#pragma mark- Picker View Delegate

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:
(NSInteger)row inComponent:(NSInteger)component{
    
    if (pickerView == self.pickerLugar){
        [self.tfOrigen setText:[[self.nodosDic objectForKey:[NSString stringWithFormat:@"%ld",(long)row]] title]];
        self.origen = [NSString stringWithFormat:@"%ld",(long)row];
    }
    if (pickerView == self.pickerLugar2){
        [self.tfDestino setText:[[self.nodosDic objectForKey:[NSString stringWithFormat:@"%ld",(long)row]] title]];
        self.destino = [NSString stringWithFormat:@"%ld",(long)row];
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:
(NSInteger)row forComponent:(NSInteger)component{
    
    return [[self.nodosDic objectForKey:[NSString stringWithFormat:@"%ld",(long)row]] title];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController]
    // Pass the selected object to the new view controller.
    if(self.origen == nil || self.destino == nil){
        
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Aviso"
                                                                       message:@"Recuerda que debes elegir un Origen y un Destino."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        
        
    } else 
    
   if ([[segue identifier] isEqualToString:@"mostrarRuta"] && self.origen != nil && self.destino != nil ) {
       
       UINavigationController *navi = [segue destinationViewController];
       TableViewController *viewRutas = [navi topViewController];
       
       
       //NSLog(self.origen);
       //NSLog(self.destino);
       
       //Manda Valores a la siguiente vista
       viewRutas.destOrigen = self.origen;
       viewRutas.destDestino = self.destino;
       viewRutas.destDiscapacidad = self.discapacidad;
   }
    
   
    
}



@end
