//
//  ViewController.m
//  tableview
//
//  Created by C N Soft Net on 30/01/17.
//  Copyright © 2017 C N Soft Net. All rights reserved.
//

#import "ItemListVC.h"
#import "DetailVC.h"
#import "ItemCell.h"
#import "LastViewController.h"

@interface ItemListVC ()
{
    NSDictionary *tempDict;

}
@end

@implementation ItemListVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title=@"Item List";
    self.navigationController.navigationBar.translucent = NO;
    itemArray=[[NSMutableArray alloc] init];
    itemArray=[[self fetchItem] mutableCopy];
    _masterTbl.delegate=self;
    _masterTbl.dataSource=self;
    [_masterTbl reloadData];
}

-(NSArray *)fetchItem
{
    NSArray *dataArray=[NSArray arrayWithObjects:@"First",@"Second",@"Third",@"Four",nil];
    return dataArray;
}

#pragma mark - UNWIND Segue

-(IBAction)backToItemListVC:(UIStoryboardSegue *)segue
{
    LastViewController *obj=segue.sourceViewController;
    if(obj.passDataBack)
        NSLog(@"Data received from last VC %@",obj.passDataBack);

}



#pragma mark - Tableview

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [itemArray count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200.0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    ItemCell *cell=[tableView dequeueReusableCellWithIdentifier:@"ItemCell"];
    if(cell==nil)
    {
        cell=[[ItemCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ItemCell"];
    }
    cell.itemNameLbl.text=[NSString stringWithFormat:@"%@",[itemArray objectAtIndex:indexPath.row]];

    return cell;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    tempDict=[NSDictionary dictionaryWithObjectsAndKeys:[itemArray objectAtIndex:indexPath.row],@"Name",@"23.0225",@"lat",@"72.57",@"long", nil];
    [self performSegueWithIdentifier:@"stroyID" sender:self];
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40.0;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"%@",[itemArray objectAtIndex:section]];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [self.navigationController setNavigationBarHidden:FALSE animated:YES];

    if([segue.identifier isEqualToString:@"stroyID"])
    {
        objDetail=[segue destinationViewController];
        objDetail.selectedData=tempDict;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
