//
//  UserDatesViewController.m
//  Birthday
//
//  Created by Сергей Мусаэлян on 06.04.17.
//  Copyright © 2017 Musaelyan Sergei. All rights reserved.
//

#import "UserDatesViewController.h"
#import "PersonInfo.h"

@interface UserDatesViewController()
@property (strong, nonatomic) NSArray *usersInfoArray;
@end

@implementation UserDatesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.usersInfoArray = [[NSUserDefaults standardUserDefaults] objectForKey:kUserDefault];
    [self.tableUsersBirthdays reloadData];
}

#pragma mark - TableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.usersInfoArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [UITableViewCell new];
    
    NSDictionary *infoDict = self.usersInfoArray[indexPath.row];
    PersonInfo *info = [PersonInfo initWithDictionary:infoDict];
    
    cell.textLabel.text = info.name;
    return cell;
}

#pragma mark - TableViewDelegate

@end
