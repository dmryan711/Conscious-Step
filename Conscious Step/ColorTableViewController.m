//
//  ColorTableViewController.m
//  Conscious Step
//
//  Created by Devon Ryan on 3/27/14.
//  Copyright (c) 2014 Devon Ryan. All rights reserved.
//

#import "ColorTableViewController.h"
#define SECTIONS 3

@interface ColorTableViewController ()

@property (nonatomic, strong) NSMutableArray *colors;
@property (nonatomic, strong) NSMutableArray *secoundaryColors;
@property (nonatomic, strong) NSMutableArray *tertiaryColors;

@end

@implementation ColorTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    
    }
    return self;
}

-(void)awakeFromNib
{
    if (!_colors) _colors = [NSMutableArray arrayWithObjects:@"   Blue",@"   Gray",@"     Yellow",@"   Black",@"   Red",@"   Green", nil];
    if (!_secoundaryColors) _secoundaryColors = [NSMutableArray arrayWithObjects:@"    Blue",@"    Gray",@"  Yellow",@"   Black",@"   Red",@"    Green", nil];
    if (!_tertiaryColors) _tertiaryColors = [NSMutableArray arrayWithObjects:@"   Blue",@"   Gray",@"    Yellow",@"    Black",@"    Red",@"     Green", nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Color Menu";

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if (section == 0) {
        return [self.colors count];
    }else if (section == 1){
        return [self.secoundaryColors count];
    
    }else{
        return [self.tertiaryColors count];
    
    }

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    if (indexPath.section == 0) {
        cell.textLabel.text = [self.colors objectAtIndex:indexPath.row];
    }else if (indexPath.section == 1){
        cell.textLabel.text = [self.secoundaryColors objectAtIndex:indexPath.row];
        
    }else{
    
        cell.textLabel.text = [self.tertiaryColors objectAtIndex:indexPath.row];
    }
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
