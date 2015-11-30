//
//  TableViewController.m
//  ProyectoPantallas
//
//  Created by Mayra Ruiz on 07/11/15.
//  Copyright © 2015 José Antonio Ruiz del Moral Cervantes. All rights reserved.
//

#import "TableViewController.h"
#import "Celda.h"
#import "ViewControllerRuta.h"
#import "DetailViewController.h"
#import "PESGraph.h"
#import "PESGraphNode.h"
#import "PesGraphRoute.h"
#import "PesGraphEdge.h"
#import "PesGraphRouteStep.h"


@interface TableViewController ()

//Diccionario que contiene nuestros nodos.
@property NSMutableDictionary *nodosDic;

//Se declara el objeto PESGraph, que contendra a la información de los nodos.
@property PESGraph *graph;

//Se declara el objeto PESGraphEdge, que contendra la informacion de los vertices.
@property PESGraphEdge *edge;

//Se declara el objeto PESGraphRoute, que contendra la información de la ruta, en base a los nodos y vertices.
@property PESGraphRoute *route;

@property NSMutableArray *ruta;


//Se declaran nuestros nodos.
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

@implementation TableViewController



- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Ruta";
    // Do any additional setup after loading the view, typically from a nib.
    
    //Se inicializa el objeto PESGraph que es el que contendra a todos nuestros nodos y vertices.
    self.graph = [[PESGraph alloc] init];
    
    //Se inicializan nuestros nodos.
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
    
    //Inicializamos nuestro Diccionario de Nodos con los nodos creados previamente.
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
                     ,self.treintaNode,@"30"
                     ,nil];
    
    
    
    //Aqui se declaran los vertices que conectan a nuestros nodos -> revisar Anexo de Excel con información de los vertices.
    
    
    //Entrada Rectoría:
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"1 <-> 9" andWeight:[NSNumber numberWithInt:100] andIndicacion:[NSString stringWithFormat:@"En cada extremo de la fachada de rectoría se enceuntran rampas de acceso."]] fromNode:self.unoNode toNode:self.nueveNode];
    
    //Entrada Lago de los Patos
    // a Rectoría
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"2 <-> 9" andWeight:[NSNumber numberWithInt:138] andIndicacion:[NSString stringWithFormat:@"Por el lado izquierdo de la Fachada Rectoría se encuentra una rampa."]] fromNode:self.dosNode toNode:self.nueveNode];
    //a Aulas 1
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"2 <-> 10" andWeight:[NSNumber numberWithInt:227] andIndicacion:[NSString stringWithFormat:@"se debera rodear el edificio para poder acceder a él la rampa se encuentra, pegada al extremo este del edificio."]] fromNode:self.dosNode toNode:self.diezNode];
    // a CIAP
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"2 <-> 30" andWeight:[NSNumber numberWithInt:163] andIndicacion:[NSString stringWithFormat:@"La Rampa de Acceso a CIAP se localiza a la mitad de la explanada."]] fromNode:self.dosNode toNode:self.treintaNode];
    
    //Entrada CIAP
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"3 <-> 30" andWeight:[NSNumber numberWithInt:10] andIndicacion:[NSString stringWithFormat:@"Aviso: No se cuenta con rampa de acceso por esta entrada. Escaleras de Acceso entre Entrada y Edificio."]] fromNode:self.tresNode toNode:self.treintaNode];
    
    //Entrada Biotecnologia
    // a Centro de Biotecnología
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"4 <-> 14" andWeight:[NSNumber numberWithInt:92] andIndicacion:[NSString stringWithFormat:@"Deberás rodear el Centro de Biotecnología para llegar a la rampa localizada en el lado sur."]] fromNode:self.cuatroNode toNode:self.catorceNode];
    // a ATLI
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"4 <-> 27" andWeight:[NSNumber numberWithInt:80] andIndicacion:[NSString stringWithFormat:@"El acceso por rampa al edificio se encuentra justo enfrente del Centre de Biotecnología"]] fromNode:self.cuatroNode toNode:self.veintisieteNode];
    // a CIAP
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"4 <-> 30" andWeight:[NSNumber numberWithInt:121] andIndicacion:[NSString stringWithFormat:@"La rampa de CIAP mas cercana a la Entrada es la que esta pegada al este del edificio en primer piso."]] fromNode:self.cuatroNode toNode:self.treintaNode];
    
    //Entrada Estadio
    // a DAF
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"5 <-> 26" andWeight:[NSNumber numberWithInt:55] andIndicacion:[NSString stringWithFormat:@"Mantenerse por pasillo DAF."]] fromNode:self.cincoNode toNode:self.veintiseisNode];
    //a Gimnasio
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"5 <-> 28" andWeight:[NSNumber numberWithInt:8] andIndicacion:[NSString stringWithFormat:@"Después de Entrar Incorporate a al pasillo DAF, entre la entrada y el Gimnasio."]] fromNode:self.cincoNode toNode:self.veintiochoNode];
    
    //Entrada Centro Estudiantil Aulas 4
    // a Aulas 4
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"6 <-> 13" andWeight:[NSNumber numberWithInt:75] andIndicacion:[NSString stringWithFormat:@"Se enceuntra una rampa de Acceso en Aulas 4 por el cruce peatonal."]] fromNode:self.seisNode toNode:self.treceNode];
    // a Centro Estudiantil
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"6 <-> 22" andWeight:[NSNumber numberWithInt:145] andIndicacion:[NSString stringWithFormat:@"Continua Pegado por centro estudianitl hasta llegar a la rampa de acceso."]] fromNode:self.seisNode toNode:self.veintidosNode];
    
    //Entrada Centro Estudiantil Sur
    // a Centro Estudiantil
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"7 <-> 22" andWeight:[NSNumber numberWithInt:90] andIndicacion:[NSString stringWithFormat:@"El trayecto no tiene desniveles hasta llegar a centro Estudiantil."]] fromNode:self.sieteNode toNode:self.veintidosNode];
    
    //Entrada Centro Estudiantil / Bancos
    // a Aulas 1
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"8 <-> 12" andWeight:[NSNumber numberWithInt:205] andIndicacion:[NSString stringWithFormat:@"Aviso: Aulas 1 no cuenta con elevador. La rampa en Aulas 1 se enceuntra en la mitad del edificio."]] fromNode:self.ochoNode toNode:self.doceNode];
    // a Centro Estudiantil
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"8 <-> 22" andWeight:[NSNumber numberWithInt:54] andIndicacion:[NSString stringWithFormat:@"A la derecha de la entrada se encuentra la rampa de acceso."]] fromNode:self.ochoNode toNode:self.veintidosNode];
    // a Cafetería Borrego Food Box
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"8 <-> 23" andWeight:[NSNumber numberWithInt:110] andIndicacion:[NSString stringWithFormat:@"A mano izquierda de la entrada "]] fromNode:self.ochoNode toNode:self.veintitresNode];
    
    //Rectoria
    // a Aulas 1
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"9 <-> 10" andWeight:[NSNumber numberWithInt:173] andIndicacion:[NSString stringWithFormat:@"Por el pasillo a la izquierda de Rectoría"]] fromNode:self.nueveNode toNode:self.diezNode];
    // a Aulas 2
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"9 <-> 11" andWeight:[NSNumber numberWithInt:170] andIndicacion:[NSString stringWithFormat:@"Aviso: Aulas 2 no cuenta con elevador. Por el pasillo a la derecha de Rectoría, llegar al final de Aulas 2 donde se encuentra un acceso con rampa."]] fromNode:self.nueveNode toNode:self.onceNode];
    // a CETEC
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"9 <-> 17" andWeight:[NSNumber numberWithInt:167] andIndicacion:[NSString stringWithFormat:@"Se deberá tomar el pasillo a la izquierda de rectoría y rodear el edificio por atrás, ya que ahí es donde se cuenta con rampas de acceso."]] fromNode:self.nueveNode toNode:self.diecisieteNode];
    // a Cafetería Carreta
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"9 <-> 24" andWeight:[NSNumber numberWithInt:100]  andIndicacion:[NSString stringWithFormat:@"Sigue por el lado izquerdo de Rectoria entre Aulas 1 y continua derecho por ese pasillo."]] fromNode:self.nueveNode toNode:self.veinticuatroNode];
    
    //Aulas 1
    // a Centro de Biotecnología
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"10 <-> 14" andWeight:[NSNumber numberWithInt:75] andIndicacion:[NSString stringWithFormat:@"Deberás acceder por la parte sur del centro de Biotecnología, ahí se enceuntra la rampa de acceso."]] fromNode:self.diezNode toNode:self.catorceNode];
    // a Centrales 1 / Administrativo
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"10 <-> 18" andWeight:[NSNumber numberWithInt:118] andIndicacion:[NSString stringWithFormat:@"Aulas 1 Hacia jardin de centrales por el pasillo de la izquierda"]] fromNode:self.diezNode toNode:self.dieciochoNode];
    // a Centrales 2 / Learning Commons
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"10 <-> 19" andWeight:[NSNumber numberWithInt:82] andIndicacion:[NSString stringWithFormat:@"Hacia jardin de Centrales por pasillo izquierdo"]] fromNode:self.diezNode toNode:self.diecinueveNode];
    // a Centrales Cuenta de Alumno
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"10 <-> 24" andWeight:[NSNumber numberWithInt:79] andIndicacion:[NSString stringWithFormat:@"Rodear Centrales, en la parte posterior se enceuntran las escaleras de acceso."]] fromNode:self.diezNode toNode:self.diecinueveNode];
    
    //Aulas 2
    // a CETEC
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"11 <-> 17" andWeight:[NSNumber numberWithInt:122] andIndicacion:[NSString stringWithFormat:@"Se debera utliizar el elevador para silla de ruedas, ubicado en Aulas 2"]] fromNode:self.onceNode toNode:self.diecisieteNode];
    // a Centrales 1 / Learning Commons.
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"11 <-> 18" andWeight:[NSNumber numberWithInt:100] andIndicacion:[NSString stringWithFormat:@"Proseguir hacia jardin de centrales, tomar el pasillo derecho."]] fromNode:self.onceNode toNode:self.dieciochoNode];
    // a Centrales Cafeteria
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"11 <-> 21" andWeight:[NSNumber numberWithInt:125] andIndicacion:[NSString stringWithFormat:@"Tomar el pasillo central del jardin de centrales"]] fromNode:self.onceNode toNode:self.veintiunoNode];
    // a Carreta
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"11 <-> 24" andWeight:[NSNumber numberWithInt:95] andIndicacion:[NSString stringWithFormat:@"Seguir derecho hacia la cafetería rodear, por el lado pegado a aulas 1, ahí se ecuentra el acceso con rampas."]] fromNode:self.onceNode toNode:self.veinticuatroNode];
    
    //Aulas 3
    // a Aulas 4
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"12 <-> 13" andWeight:[NSNumber numberWithInt:64] andIndicacion:[NSString stringWithFormat:@" Cruzar pasillo entre edificios tomar rampa por el estacionamiento de bicicletas, se encuentra una rampa. "]] fromNode:self.doceNode toNode:self.treceNode];
    // a CETEC
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"12 <-> 17" andWeight:[NSNumber numberWithInt:120] andIndicacion:[NSString stringWithFormat:@"Rodear Construccion de Biblioteca, el camino cuenta con rampas."]] fromNode:self.doceNode toNode:self.diecisieteNode];
    // a Centro Estudiantil
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"12 <-> 22" andWeight:[NSNumber numberWithInt:110] andIndicacion:[NSString stringWithFormat:@"Derecho por el pasillo, la rampa se encuentra en el extremo sur de centro estudiantil."]] fromNode:self.doceNode toNode:self.veintidosNode];
    // a Cafeteria Borrego / FoodBox
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"12 <-> 23" andWeight:[NSNumber numberWithInt:60] andIndicacion:[NSString stringWithFormat:@"Deberás rodear la cafetría apra poder acceder por la rampa."]] fromNode:self.doceNode toNode:self.veintitresNode];
    //Jubileo
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"12 <-> 29" andWeight:[NSNumber numberWithInt:125] andIndicacion:[NSString stringWithFormat:@"Deberás ir a la explanada de centro estudiantil, y tomar la rampa hacía la cafetería."]] fromNode:self.doceNode toNode:self.veintinueveNode];
    
    //Aulas 4
    // a Aulas 7
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"13 <-> 16" andWeight:[NSNumber numberWithInt:144] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.treceNode toNode:self.dieciseisNode];
    // a Centro Estudiantil
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"13 <-> 22" andWeight:[NSNumber numberWithInt:175] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.treceNode toNode:self.veintidosNode];
    // a Cafeteria Borrego / FoodBox
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"13 <-> 23" andWeight:[NSNumber numberWithInt:157] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.treceNode toNode:self.veintitresNode];
    //a Gimnasio
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"13 <-> 28" andWeight:[NSNumber numberWithInt:290] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.treceNode toNode:self.veintiochoNode];
    
    //Centro Biotecnología / Aulas 5
    // a Aulas 6
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"14 <-> 15" andWeight:[NSNumber numberWithInt:152] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.catorceNode toNode:self.quinceNode];
    // a Centrales 1 / Learning Commons
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"14 <-> 18" andWeight:[NSNumber numberWithInt:200] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.catorceNode toNode:self.dieciochoNode];
    // a Centrales 2 / Administrativo
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"14 <-> 19" andWeight:[NSNumber numberWithInt:170] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.catorceNode toNode:self.diecinueveNode];
    // a Centrales Cuenta de alumno
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"14 <-> 20" andWeight:[NSNumber numberWithInt:108] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.catorceNode toNode:self.veinteNode];
    // a Centrales Cafeteria
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"14 <-> 21" andWeight:[NSNumber numberWithInt:115] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.catorceNode toNode:self.veintiunoNode];
    // a Cafeteria Carreta
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"14 <-> 24" andWeight:[NSNumber numberWithInt:170] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.catorceNode toNode:self.veinticuatroNode];
    // a Domo Acuatico
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"14 <-> 25" andWeight:[NSNumber numberWithInt:214] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.catorceNode toNode:self.veinticincoNode];
    //  a DAF
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"14 <-> 26" andWeight:[NSNumber numberWithInt:200] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.catorceNode toNode:self.veintiseisNode];
    // a ATLI
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"14 <-> 27" andWeight:[NSNumber numberWithInt:20] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.catorceNode toNode:self.veintisieteNode];
    // a CIAP
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"14 <-> 30" andWeight:[NSNumber numberWithInt:75] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.catorceNode toNode:self.treintaNode];
    
    //Aulas 6
    // a Aulas7
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"15 <-> 16" andWeight:[NSNumber numberWithInt:210] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.quinceNode toNode:self.dieciseisNode];
    // a Aulas Centrales Cuenta de Alumno
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"15 <-> 20" andWeight:[NSNumber numberWithInt:65] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.quinceNode toNode:self.veinteNode];
    // a Centrales Cafeteria
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"15 <-> 21" andWeight:[NSNumber numberWithInt:70] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.quinceNode toNode:self.veintiunoNode];
    // a Cafeteria Carreta
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"15 <-> 24" andWeight:[NSNumber numberWithInt:200] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.quinceNode toNode:self.veinticuatroNode];
    // a DAF
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"15 <-> 26" andWeight:[NSNumber numberWithInt:90] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.quinceNode toNode:self.veintiseisNode];
    // a ATLI
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"15 <-> 27" andWeight:[NSNumber numberWithInt:140] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.quinceNode toNode:self.veintisieteNode];
    // a Gimansio
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"15 <-> 28" andWeight:[NSNumber numberWithInt:140] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.quinceNode toNode:self.veintiochoNode];
    
    //Aulas 7
    // a Gimnasio
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"16 <-> 28" andWeight:[NSNumber numberWithInt:180] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.dieciseisNode toNode:self.veintiochoNode];
    
    //Centrales 1 / Learning Commons
    // a Centrales 2 / Administrativo
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"18 <-> 19" andWeight:[NSNumber numberWithInt:116] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.dieciochoNode toNode:self.diecinueveNode];
    // a Centrales Cuenta de Alumno
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"18 <-> 20" andWeight:[NSNumber numberWithInt:193] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.dieciochoNode toNode:self.veinteNode];
    // a Centrales Cafetería
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"18 <-> 21" andWeight:[NSNumber numberWithInt:110] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.dieciochoNode toNode:self.veintiunoNode];
    // a Cafeteria Carreta
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"18 <-> 24" andWeight:[NSNumber numberWithInt:115] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.dieciochoNode toNode:self.veinticuatroNode];
    // a Domo Acuatico
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"18 <-> 25" andWeight:[NSNumber numberWithInt:210] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.dieciochoNode toNode:self.veinticincoNode];
    // a DAF
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"18 <-> 26" andWeight:[NSNumber numberWithInt:230] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.dieciochoNode toNode:self.veintiseisNode];
    // a ATLI
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"18 <-> 27" andWeight:[NSNumber numberWithInt:185] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.dieciochoNode toNode:self.veintisieteNode];
    // a Gimnasio
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"18 <-> 28" andWeight:[NSNumber numberWithInt:280] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.dieciochoNode toNode:self.veintiochoNode];
    
    //Centrales 2 / Administrativo
    // a Centrales Cuenta de Alumnos
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"19 <-> 20" andWeight:[NSNumber numberWithInt:185] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.diecinueveNode toNode:self.veinteNode];
    // a Centrales Cafetería
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"19 <-> 21" andWeight:[NSNumber numberWithInt:116] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.diecinueveNode toNode:self.veintiunoNode];
    // a Cafeteria Carreta
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"19 <-> 24" andWeight:[NSNumber numberWithInt:110] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.diecinueveNode toNode:self.veinticuatroNode];
    // a Domo Acuatico
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"19 <-> 25" andWeight:[NSNumber numberWithInt:280] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.diecinueveNode toNode:self.veinticincoNode];
    // a DAF
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"19 <-> 26" andWeight:[NSNumber numberWithInt:300] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.diecinueveNode toNode:self.veintiseisNode];
    // a ATLI
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"19 <-> 27" andWeight:[NSNumber numberWithInt:212] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.diecinueveNode toNode:self.veintisieteNode];
    // a Gimnasio
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"19 <-> 28" andWeight:[NSNumber numberWithInt:350] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.diecinueveNode toNode:self.veintiochoNode];
    
    //Centrales Cuenta de Alumno
    // a Centrales Cafeteria
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"20 <-> 21" andWeight:[NSNumber numberWithInt:5] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.veinteNode toNode:self.veintiunoNode];
    // Cafetería Carreta
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"20 <-> 24" andWeight:[NSNumber numberWithInt:190] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.veinteNode toNode:self.veinticuatroNode];
    // a Domo Acuatico
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"20 <-> 25" andWeight:[NSNumber numberWithInt:100] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.veinteNode toNode:self.veinticincoNode];
    // a DAF
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"20 <-> 26" andWeight:[NSNumber numberWithInt:140] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.veinteNode toNode:self.veintiseisNode];
    // a ATLI
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"20 <-> 27" andWeight:[NSNumber numberWithInt:100] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.veinteNode toNode:self.veintisieteNode];
    // a Gimnasio
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"20 <-> 28" andWeight:[NSNumber numberWithInt:180] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.veinteNode toNode:self.veintiochoNode];
    
    //Centrales Cafetería
    // a Carreta
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"21 <-> 24" andWeight:[NSNumber numberWithInt:114] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.veintiunoNode toNode:self.veinticuatroNode];
    // a Domo Acuatico
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"21 <-> 25" andWeight:[NSNumber numberWithInt:240] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.veintiunoNode toNode:self.veinticincoNode];
    // a DAF
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"21 <-> 26" andWeight:[NSNumber numberWithInt:266] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.veintiunoNode toNode:self.veintiseisNode];
    // a ATLI
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"21 <-> 27" andWeight:[NSNumber numberWithInt:175] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.veintiunoNode toNode:self.veintisieteNode];
    // a Gimnasio
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"21 <-> 28" andWeight:[NSNumber numberWithInt:310] andIndicacion:[NSString stringWithFormat:@"Prueba"]] fromNode:self.veintiunoNode toNode:self.veintiochoNode];
    
    //Centro Estudiantil
    // a Cafeteria Borrego Food Box
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"22 <-> 23" andWeight:[NSNumber numberWithInt:120] andIndicacion:[NSString stringWithFormat:@"Seguir camino hacía la cafetería se debera rodear el edificio para acceder a la rampa de acceso."]] fromNode:self.veintidosNode toNode:self.veintitresNode];
    // a Jubileo
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"22 <-> 29" andWeight:[NSNumber numberWithInt:50] andIndicacion:[NSString stringWithFormat:@"Utilizar rampa que esta en la explanada de Centro Estudiantil."]] fromNode:self.veintidosNode toNode:self.veintinueveNode];
    
    //Cafeteria Carreta
    // a Domo Acuatico
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"24 <-> 25" andWeight:[NSNumber numberWithInt:256] andIndicacion:[NSString stringWithFormat:@"Tomar el camino entre Centrales y Jardin de las Carreras"]] fromNode:self.veinticuatroNode toNode:self.veinticincoNode];
    // a DAF
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"24 <-> 26" andWeight:[NSNumber numberWithInt:285] andIndicacion:[NSString stringWithFormat:@"Tomar el camino entre Centrales y Jardin de las Carreras"]] fromNode:self.veinticuatroNode toNode:self.veintiseisNode];
    // a Gimnasio
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"24 <-> 28" andWeight:[NSNumber numberWithInt:305] andIndicacion:[NSString stringWithFormat:@"Carreta a Gimnasio toma la salida hacia A2, Incorporate al Pasillo DAF y coninua todo derecho"]] fromNode:self.veinticuatroNode toNode:self.veintiochoNode];
    
    //Domo Acuatico
    // a DAF
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"25 <-> 26" andWeight:[NSNumber numberWithInt:66] andIndicacion:[NSString stringWithFormat:@"Cruza el pasillo DAF, encontraras diversas rampas de acceso."]] fromNode:self.veinticincoNode toNode:self.veintiseisNode];
    // a ATLI
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"25 <-> 27" andWeight:[NSNumber numberWithInt:160] andIndicacion:[NSString stringWithFormat:@"Deberás tomar el camino enntre el Domo Acuatico y Centrales"]] fromNode:self.veinticincoNode toNode:self.veintisieteNode];
    // a Gimnasio
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"25 <-> 28" andWeight:[NSNumber numberWithInt:104] andIndicacion:[NSString stringWithFormat:@"Cruza el pasillo DAF, encontraras diversas rampas de acceso."]] fromNode:self.veinticincoNode toNode:self.veintiochoNode];
    
    //DAF
    // a Gimnasio
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"26 <-> 28" andWeight:[NSNumber numberWithInt:40] andIndicacion:[NSString stringWithFormat:@"Cruza el pasillo DAF, encontraras diversas rampas de acceso."]] fromNode:self.veintiseisNode toNode:self.veintiochoNode];
    
    //ATLI
    // a CIAP
    [self.graph addBiDirectionalEdge:[PESGraphEdge edgeWithName:@"27 <-> 30" andWeight:[NSNumber numberWithInt:90] andIndicacion:[NSString stringWithFormat:@"La rampa para CIAP esta directo, en el extremo este, la rampa del atli esta sobre el pasillo que te lleva directamente hacía CIAP."]] fromNode:self.veintisieteNode toNode:self.treintaNode];
    
    //Se terminan de declarar los vertices, conexiones entre nodos.
    
    //Se obtiene el nodo de origen
    PESGraphNode *origenNodo = [self.nodosDic objectForKey:self.destOrigen];
    
    //Se obtiene el nodo de destino
    PESGraphNode *destinoNodo = [self.nodosDic objectForKey:self.destDestino];
    
    //NSLog(@"%@",origenNodo.title);
    //NSLog(@"%@",destinoNodo.title);
    
    
    //Función para obtener la ruta, desde nodo Origen al nodo Destino
    self.route = [self.graph shortestRouteFromNode:origenNodo toNode:destinoNodo];


    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"detail"]) {
       
        //Se crea el arreglo que contendra la ruta, obteniendo los pasos de la ruta generada por la función anterior.
        NSMutableArray *arrPath = [[NSMutableArray alloc] init];
    
            //Se agrega el origen.
            [arrPath addObject:[NSString stringWithFormat:@"Origen: %@",[self.route startingNode].title]];
        
        
         //Se agrega la indicación y el Edificio de Conexión
         for (PESGraphRouteStep *aStep in self.route.steps){
             
             
            if(aStep.edge.indicacion != nil){
            [arrPath addObject:aStep.node.title];
            [arrPath addObject:aStep.edge.indicacion];
            }
            
        
        }
        
        //Se agrega el Destino
        [arrPath addObject:[NSString stringWithFormat:@"Destino: %@", [self.route endingNode].title]];
        
            //se manda el arreglo con la ruta para poder desplegarlo
            [[segue destinationViewController] setDetailItem:arrPath];
    
        
        
        
    }
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // importante
    
    Celda *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    //Despliega el Origen de la Ruta
    [cell.txRuta setText:[self.route startingNode].title];
    
    //despleiga el Total en mts. de la ruta calculada.
    [cell.txDistancia setText:[NSString stringWithFormat:@"%4g mts",[self.route length]]];
    
    //NSLog(@"%lu",(unsigned long)[self.route count]);
    //NSLog(@"%@",[self.route startingNode].title);
    //NSLog(@"%@", [self.route endingNode].title);
    //NSLog(@"%f",[self.route length]);
    //NSString *stepsPath = [NSString stringWithString:[self.route description]];
    //NSLog(@"%@",stepsPath);
    
    
    return cell;
}




@end
