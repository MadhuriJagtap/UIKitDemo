//
//  LoginViewController.m
//  UIDemo
//
//  Created by Felix-Madhuri on 20/09/16.
//  Copyright © 2016 Felix-Madhuri. All rights reserved.
//

#import "LoginViewController.h"
#import "PickerViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor orangeColor];
    
    _container=[[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    _actualimage=[UIImage imageNamed:@"1"];
    
    _container.image=_actualimage;
    
    
    [self.view addSubview:_container];
    

    
//    _view1=[[UIView alloc]init];
//    _view1.backgroundColor=[UIColor greenColor];
//    _view1.frame=CGRectMake(50, 100, 100, 50);
//    
//    
//    [self.view addSubview:_view1];
    
    
    _usernamelbl=[[UILabel alloc]initWithFrame:CGRectMake(50, 100, 200, 50)];
    
    _usernamelbl.text=@"User name";
//    _usernamelbl.backgroundColor=[UIColor yellowColor];
//    _usernamelbl.textAlignment=NSTextAlignmentCenter;
//    _usernamelbl.textColor=[UIColor redColor];
//    _usernamelbl.font=[UIFont fontWithName:@"Times New Roman" size:30];
    
    [self.view addSubview:_usernamelbl];
    
    
    
    _passwordlbl=[[UILabel alloc]initWithFrame:CGRectMake(50, 160, 200, 50)];
    _passwordlbl.text=@"Password";
    
    [self.view addSubview:_passwordlbl];
    
    
    _usernametf=[[UITextField alloc]initWithFrame:CGRectMake(150, 100, 150, 30)];
    _usernametf.borderStyle=UITextBorderStyleRoundedRect;
    
    _usernametf.keyboardAppearance=UIKeyboardAppearanceAlert;
    _usernametf.keyboardType=UIKeyboardTypeEmailAddress;
    _usernametf.returnKeyType=UIReturnKeyNext;
    
    _usernametf.delegate=self;
    
    [self.view addSubview:_usernametf];
    
    _passwordtf=[[UITextField alloc]initWithFrame:CGRectMake(150, 150, 150, 30)];
    _passwordtf.borderStyle=UITextBorderStyleRoundedRect;
    _passwordtf.returnKeyType=UIReturnKeyDone;
    _passwordtf.delegate=self;
    _passwordtf.secureTextEntry=YES;
    [self.view addSubview:_passwordtf];
    
    _loginbtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _loginbtn.frame=CGRectMake(60, 220, 100, 50);
    [_loginbtn setTitle:@"LOGIN" forState:UIControlStateNormal];
    [_loginbtn setTitle:@"Selected" forState:UIControlStateHighlighted];
    [_loginbtn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_loginbtn];

    _cancelbtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _cancelbtn.frame=CGRectMake(170, 220, 100, 50);
    [_cancelbtn setTitle:@"CANCEL" forState:UIControlStateNormal];
    
    [_cancelbtn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_cancelbtn];
    
    
    _segmentview=[[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"Yellow",@"Blue",@"Gray", nil]];
    _segmentview.frame=CGRectMake(40, 300, 230, 50);
  //  _segmentview.tintColor=[UIColor greenColor];
    [_segmentview addTarget:self action:@selector(segmentchange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_segmentview];
    
    
    _switch1=[[UISwitch alloc]initWithFrame:CGRectMake(100, 370, 30, 30)];
    
    [_switch1 addTarget:self action:@selector(switchchange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_switch1];
    
    
    _slider=[[UISlider alloc]initWithFrame:CGRectMake(20, 400, 250, 30)];
    _slider.minimumTrackTintColor=[UIColor yellowColor];
    _slider.maximumTrackTintColor=[UIColor brownColor];
    _slider.minimumValue=1;
    _slider.maximumValue=100;
    [_slider setValue:30 animated:YES];
    
    [_slider addTarget:self action:@selector(sliderchange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_slider];
    
    
    self.navigationItem.title=@"1VC";
    
    UIBarButtonItem *rbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(rbtnclick)];
    
    
    self.navigationItem.rightBarButtonItem=rbtn;
    
}
-(void)rbtnclick
{
    
    PickerViewController *pvc=[[PickerViewController alloc]init];
    
    [self.navigationController pushViewController:pvc animated:YES];
}




-(void)sliderchange
{
    NSLog(@"%.f",_slider.value);
    
}


-(void)switchchange
{
   if( _switch1.on)
       NSLog(@"on");
    else
        NSLog(@"off");
    
}

-(void)segmentchange
{
    switch (_segmentview.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor=[UIColor yellowColor];
            break;
            
        case 1:
            self.view.backgroundColor=[UIColor blueColor];
            break;
            
        case 2:
            self.view.backgroundColor=[UIColor grayColor];
            break;
            
        default:
            break;
    }
}

-(void)btnclick:(id)sender
{
    if(sender==_loginbtn)
    {
        PickerViewController *pvc=[[PickerViewController alloc]init];
        
        [self.navigationController pushViewController:pvc animated:YES];
    }
    else
        self.view.backgroundColor=[UIColor greenColor];
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField==_usernametf)
        [_passwordtf becomeFirstResponder];
    else
        [_passwordtf resignFirstResponder];
    
    return YES;
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    NSLog(@"Should begin");
    return YES;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"Did begin");
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    NSLog(@"Should end");
    return YES;
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"Did end");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
