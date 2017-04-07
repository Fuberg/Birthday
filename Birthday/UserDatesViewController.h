//
//  UserDatesViewController.h
//  Birthday
//
//  Created by Сергей Мусаэлян on 06.04.17.
//  Copyright © 2017 Musaelyan Sergei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserDatesViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource
>
@property (weak, nonatomic) IBOutlet UITableView *tableUsersBirthdays;
@end
