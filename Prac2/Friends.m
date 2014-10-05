//
//  Friends.m
//  Prac2
//
//  Created by mike on 04/10/14.
//  Copyright (c) 2014 mike. All rights reserved.
//

#import "Friends.h"
#import "ListFriend.h"
#import "variables.h"
@interface Friends ()

@end

@implementation Friends

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    maNamesf     =  [NSMutableArray arrayWithObjects:@"Jebus", @"Changoleon", @"Jaime", @"Laura", @"Carmen", @"Pancho", nil];
    maSurnamesf  =  [NSMutableArray arrayWithObjects:@"Nazareth",@"?????", @"Duende", @"Bozzo", @"Salinas", @"Cachondo", nil];
    maAgesf      =  [NSMutableArray arrayWithObjects:@"NPE", @"56", @"36", @"63", @"81", @"52", nil];
    maNamesj     =  [NSMutableArray arrayWithObjects:@"Lupe", @"Daniel", @"Chiquidracula", @"Amandititita", @"Duquesa", @"Jaime", nil];
    maSurnamesj  =  [NSMutableArray arrayWithObjects:@"Esparza",@"Bisogno", @"Ratzinger", @"????", @"De Alba", @"Maussan", nil];
    maAgesj      =  [NSMutableArray arrayWithObjects:@"55", @"41", @"90", @"29", @"100", @"52", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/***********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{NSLog(@"xx");
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 74;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"ListFriend";
    
    ListFriend *cell = (ListFriend *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[ListFriend alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    switch (self.segOut.selectedSegmentIndex) {
        case 0:
            cell.lblName.text = maNamesj[indexPath.row];
            break;
        case 1:
            break;
        default:
            break;
    }

   /* if (posState == 0) {
        cell.lblCity.text = maCities[indexPath.row];
    } else {
        cell.lblCity.text = maCities[(posState*3)+indexPath.row];
    }*/
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //self.lblCityTxt.text = maCities[(posState*3)+indexPath.row];
    //self.lblCity.image = [UIImage imageNamed:[maIcity objectAtIndex:(posState*3)+indexPath.row]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)segFriends:(id)sender {
    }
@end
