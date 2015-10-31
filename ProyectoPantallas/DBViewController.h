//
//  DBViewController.h
//  ProyectoPantallas
//
//  Created by José Antonio Ruiz del Moral Cervantes on 10/22/15.
//  Copyright © 2015 José Antonio Ruiz del Moral Cervantes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddViewController.h"


@interface DBViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, EditInfoViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tblPeople;


- (IBAction)addNewRecord:(id)sender;


@end
