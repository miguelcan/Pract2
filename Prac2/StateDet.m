//
//  StateDet.m
//  Prac2
//
//  Created by mike on 04/10/14.
//  Copyright (c) 2014 mike. All rights reserved.
//

#import "StateDet.h"
#import "variables.h"

@interface StateDet ()

@end

@implementation StateDet

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    maIstate    =  [NSMutableArray arrayWithObjects: @"Aguascalientes.jpg", @"baja.jpg", @"Coahuila.jpg", @"Jalisco.jpg", @"Michoacan.jpg", @"Oaxaca.jpg", @"Puebla.jpg", @"Zacatecas.jpg", nil];
    self.lblCityTxt.text = strState;
    self.lblCity.image = [UIImage imageNamed:[maIstate objectAtIndex:posState]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
