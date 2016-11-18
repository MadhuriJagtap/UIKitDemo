//
//  LoginViewController.h
//  UIDemo
//
//  Created by Felix-Madhuri on 20/09/16.
//  Copyright © 2016 Felix-Madhuri. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LoginViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic,retain) UIView *view1;

@property(nonatomic,retain)UILabel *usernamelbl,*passwordlbl;

@property(nonatomic,retain)UITextField *usernametf,*passwordtf;

@property(nonatomic,retain)UIButton *loginbtn,*cancelbtn;

@property(nonatomic,retain)UISegmentedControl *segmentview;

@property(nonatomic,retain)UISwitch *switch1;

@property(nonatomic,retain)UISlider *slider;


@property(nonatomic,retain)UIImageView *container;

@property(nonatomic,retain)UIImage *actualimage;









@end
