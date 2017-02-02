//
//  ViewController.h
//  tableview
//
//  Created by C N Soft Net on 30/01/17.
//  Copyright © 2017 C N Soft Net. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailVC.h"

@interface ItemListVC : UIViewController <UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *itemArray;
    DetailVC *objDetail;

}
@property (weak, nonatomic) IBOutlet UITableView *masterTbl;

@end

