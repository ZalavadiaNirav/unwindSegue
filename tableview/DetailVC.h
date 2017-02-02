//
//  DetailVC.h
//  tableview
//
//  Created by C N Soft Net on 30/01/17.
//  Copyright © 2017 C N Soft Net. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface DetailVC : UIViewController <MKMapViewDelegate>
{
    NSDictionary *selectedData;
}

@property (nonatomic,retain) NSDictionary *selectedData;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;



@end
