

//
//  DetailVC.m
//  tableview
//
//  Created by C N Soft Net on 30/01/17.
//  Copyright © 2017 C N Soft Net. All rights reserved.
//

#import "DetailVC.h"
#import "pinView.h"
#import "LastViewController.h"
@interface DetailVC ()

@end

@implementation DetailVC

@synthesize selectedData,mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
        
    self.navigationItem.title=@"Detail";
        
    NSLog(@"Navigation Controller %@",self.navigationController);
    
    
    
    CLLocationCoordinate2D coordinate=CLLocationCoordinate2DMake([[self.selectedData objectForKey:@"lat"] floatValue],[[self.selectedData objectForKey:@"long"] floatValue]);

    self.mapView.frame=CGRectMake(0, 64, self.view.frame.size.width,self.view.frame.size.height);
    self.mapView.delegate=self;
    MKCoordinateSpan span=MKCoordinateSpanMake(0.1,0.1);
    MKCoordinateRegion region=MKCoordinateRegionMake(coordinate, span);
    [self.mapView setRegion:region];
    MKPointAnnotation *annotationPoint = [[MKPointAnnotation alloc] init];
    annotationPoint.coordinate = coordinate;
    annotationPoint.title = @"Pin";
    annotationPoint.subtitle = @"Pin Detail";
    [self.mapView addAnnotation:annotationPoint];
    
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:FALSE animated:YES];

  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}



@end
