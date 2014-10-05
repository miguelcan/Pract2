//
//  States.m
//  Prac2
//
//  Created by mike on 04/10/14.
//  Copyright (c) 2014 mike. All rights reserved.
//

#import "States.h"
#import "stateCell.h"
#import "variables.h"

@interface States ()

@end

@implementation States

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    maStates     =  [NSMutableArray arrayWithObjects: @"Aguascalientes", @"Baja California", @"Coahuila", @"Jalisco", @"Michoacan", @"Oaxaca", @"Puebla", @"Zacatecas", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{NSLog(@"xx");
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"stateCell";
    
    stateCell *cell = (stateCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[stateCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblState.text       = maStates[indexPath.row];

    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    /* strSelectedName     = [NSString stringWithFormat:@"%@", maNames[indexPath.row]];
     strSelectedImg      = [NSString stringWithFormat:@"%@", maImages[indexPath.row]];
     
     NSLog(@"strSelectedName %@", strSelectedName);
     NSLog(@"strSelectedImg %@", strSelectedImg);
     
     NSString * storyboardName = @"Main";
     UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
     UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"Details"];
     [self presentViewController:vc animated:YES completion:nil];*/
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
