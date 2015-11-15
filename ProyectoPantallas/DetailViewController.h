//
//  DetailViewController.h
//  ProyectoPantallas
//
//  Created by Mayra Ruiz on 14/11/15.
//  Copyright © 2015 José Antonio Ruiz del Moral Cervantes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSMutableArray* detailItem;

@property (weak, nonatomic) IBOutlet UILabel *labDetail;

@end
