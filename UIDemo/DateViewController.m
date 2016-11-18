//
//  DateViewController.m
//  UIDemo
//
//  Created by Felix-Madhuri on 29/09/16.
//  Copyright © 2016 Felix-Madhuri. All rights reserved.
//

#import "DateViewController.h"
#import "TableViewController.h"

@interface DateViewController ()

@end

@implementation DateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    
    _datepicker=[[UIDatePicker alloc]initWithFrame:CGRectMake(0, 50, 320, 250)];
    
    _datepicker.datePickerMode=UIDatePickerModeDate;
    
    [_datepicker addTarget:self action:@selector(dateselected) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_datepicker];
    
    
    self.navigationItem.title=@"3VC";
    
    UIBarButtonItem *rbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(rbtnclick)];
    
    
    self.navigationItem.rightBarButtonItem=rbtn;
    
}
-(void)rbtnclick
{
    
    TableViewController *tvc=[[TableViewController alloc]init];
    
    [self.navigationController pushViewController:tvc animated:YES];
}



-(void)dateselected
{
    
    NSDateFormatter *format=[[NSDateFormatter alloc]init];
    
    [format setDateFormat:@"dd-MM-YYYY  hh-mm-a"];
    
   NSString *result= [format stringFromDate:[_datepicker date]];
    
   // [format dateFromString:<#(nonnull NSString *)#>]

    NSLog(@"%@",result);
    
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
