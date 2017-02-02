//
//  LastViewController.h
//  tableview
//
//  Created by C N Soft Net on 02/02/17.
//  Copyright © 2017 C N Soft Net. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LastViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *saveBtn;
@property (nonatomic,retain) NSString *passDataBack;
@property (strong, nonatomic) IBOutlet UITextField *userTxt;

@end
