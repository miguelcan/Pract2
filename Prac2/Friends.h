//
//  Friends.h
//  Prac2
//
//  Created by mike on 04/10/14.
//  Copyright (c) 2014 mike. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Friends : UIViewController

- (IBAction)segFriends:(id)sender;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segOut;
@property (strong, nonatomic) IBOutlet UITableView *tblFirends;
@property (strong, nonatomic) IBOutlet UILabel *lblDispNam;

@property (strong, nonatomic) IBOutlet UILabel *lblDispSur;
@property (strong, nonatomic) IBOutlet UILabel *lblDispAge;
@property (strong, nonatomic) IBOutlet UIImageView *imgFnd;

@end
