//
//  StateDet.m
//  Prac2
//
//  Created by mike on 04/10/14.
//  Copyright (c) 2014 mike. All rights reserved.
//

#import "StateDet.h"
#import "variables.h"
#import "Cities.h"

@interface StateDet ()

@end

@implementation StateDet

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    maIstate    =  [NSMutableArray arrayWithObjects: @"Aguascalientes.jpg", @"baja.jpg", @"Coahuila.jpg", @"Jalisco.jpg", @"Michoacan.jpg", @"Oaxaca.jpg",
                    @"Puebla.jpg", @"Zacatecas.jpg", nil];
    maCities    =  [NSMutableArray arrayWithObjects: @"Aguascalientes",@"Calvillo", @"Jesus Maria", @"Tijuana", @"Ensenada", @"Mexicali", @"Torreon", @"Matamoros", @"Parras", @"Zapopan", @"Ranchomulco", @"Tronala", @"Zamora", @"Morelia", @"Sahuayo", @"Salina Cruz", @"Tuxtepec", @"Pinotepa", @"Cholula", @"Tehuacan", @"Huejotzingo", @"Sombrerete", @"Fresnillo", @"Luis Moya", nil];
    self.lblCityTxt.text = strState;
    self.lblCity.image = [UIImage imageNamed:[maIstate objectAtIndex:posState]];
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
    return 3;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cities";
    
    Cities *cell = (Cities *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[Cities alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    NSLog(@"POSI %ld", (long)posState);
    if (posState == 0) {
        cell.lblCity.text = maCities[indexPath.row];
    } else {
        cell.lblCity.text = maCities[(posState*3)+indexPath.row];
    }
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.lblCityTxt.text = maCities[(posState*3)+indexPath.row];
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
