//
//  TableViewController.h
//  UIDemo
//
//  Created by Felix-Madhuri on 29/09/16.
//  Copyright © 2016 Felix-Madhuri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,retain)UITableView *table;

@property(nonatomic,retain)NSMutableArray *cityarray,*colorarray;



@end
