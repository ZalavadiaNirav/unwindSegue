//
//  ItemCell.h
//  tableview
//
//  Created by C N Soft Net on 31/01/17.
//  Copyright © 2017 C N Soft Net. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *itemImage;
@property (strong, nonatomic) IBOutlet UILabel *itemNameLbl;
@end
