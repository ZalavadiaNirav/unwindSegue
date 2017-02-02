//
//  LastViewController.m
//  tableview
//
//  Created by C N Soft Net on 02/02/17.
//  Copyright © 2017 C N Soft Net. All rights reserved.
//

#import "LastViewController.h"

@interface LastViewController ()

@end

@implementation LastViewController

@synthesize passDataBack;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //passing data LastVC to ItemListVC
    if (sender==self.saveBtn)
    {
        if(_userTxt.text.length >0)
            self.passDataBack=_userTxt.text;
    }
    
    
}



@end
