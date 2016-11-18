//
//  PickerViewController.h
//  UIDemo
//
//  Created by Felix-Madhuri on 27/09/16.
//  Copyright © 2016 Felix-Madhuri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>

@property(nonatomic,retain)UIPickerView *picker;

@property(nonatomic,retain)NSMutableArray *cityarray,*colorarray,*imgarray;

@property(nonatomic,retain)UILabel *lbl;



@end
