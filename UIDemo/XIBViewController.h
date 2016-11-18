//
//  XIBViewController.h
//  UIDemo
//
//  Created by Felix-Madhuri on 04/10/16.
//  Copyright © 2016 Felix-Madhuri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XIBViewController : UIViewController<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource,UIPickerViewDelegate,UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *table;

@property (weak, nonatomic) IBOutlet UIPickerView *picker;


@property (weak, nonatomic) IBOutlet UILabel *lbl1;



- (IBAction)btnclick:(id)sender;


@property (weak, nonatomic) IBOutlet UITextField *tf1;




@end
