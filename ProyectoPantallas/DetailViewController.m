//
//  DetailViewController.m
//  2doParcial
//
//  Created by alumno on 11/2/15.
//  Copyright (c) 2015 Mayra Ruiz. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Indicaciones";
    // Do any additional setup after loading the view, typically from a nib.
    
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Segues



#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.detailItem count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // importante
    
    UIView* separatorLineView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 1)];/// change size as you need.
    separatorLineView.backgroundColor = [UIColor grayColor];// you can also put image here
    
    
    UITableViewCell *cellRuta = [tableView dequeueReusableCellWithIdentifier:@"CellRuta" forIndexPath:indexPath];
    
    NSString *paso = self.detailItem[indexPath.row];
    cellRuta.textLabel.numberOfLines = 0;
    cellRuta.textLabel.lineBreakMode = NSLineBreakByWordWrapping;
    cellRuta.textLabel.text = paso;
    [cellRuta.contentView addSubview:separatorLineView];
    
    return cellRuta;
}


@end
