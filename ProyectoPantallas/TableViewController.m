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

@interface TableViewController ()

@property NSDictionary *objects;
@property NSMutableArray *ruta;

@end

@implementation TableViewController



- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    NSString *pathPlist = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    self.objects = [[NSDictionary alloc]  initWithContentsOfFile:pathPlist];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"detail"]) {
        
        NSDictionary  *dic = [self.objects objectForKey:self.destOrigen];
        NSDictionary *dest = [dic objectForKey:self.destDestino];
        _ruta = [dest objectForKey:@"Ruta"];
        
            [[segue destinationViewController] setDetailItem:self.ruta];
           // [[segue destinationViewController] setDelegado: self];
        
        
        
    }
}

- (NSDictionary *) funcionRegresaDiccionario: (NSString *) discap withOrigen: (NSString *) origen withDestino: (NSString *) destino {
    
    NSDictionary *dic;
    
    
    
    return dic;
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // importante
    Celda *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    
    NSDictionary  *dic = [self.objects objectForKey:self.destOrigen];
    NSDictionary *dest = [dic objectForKey:self.destDestino];
    _ruta = [dest objectForKey:@"Ruta"];
    
    
    cell.txRuta.text = @"hola"; //[object objectForKey:@"tipo"];
    cell.txDistancia.text = @"bye"; //[object objectForKey:@"capacidad"];
  
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.ruta removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

@end
