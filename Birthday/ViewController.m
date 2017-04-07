//
//  ViewController.m
//  Birthday
//
//  Created by Сергей Мусаэлян on 04.04.17.
//  Copyright © 2017 Musaelyan Sergei. All rights reserved.
//

#import "ViewController.h"
#import "PersonInfo.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UIButton *createButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //  Вообще не дает открыть клавиатуру
    //[self.nameField endEditing:YES];
    
    self.datePicker.maximumDate = [NSDate date];
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSince1970:-2208988800];
}

- (IBAction)onPressAddButton:(UIButton *)sender {
    // Получаем ссылку на userDefaults
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    // Выбираем массив словарей !
    NSMutableArray *birthdays = [NSMutableArray arrayWithArray:[userDefaults objectForKey:kUserDefault]];
    // Создаём и описываем данные нового персонажа
    PersonInfo *newPerson = [PersonInfo new];
    newPerson.name = self.nameField.text;
    newPerson.birthdayDate = [[self.datePicker date] timeIntervalSince1970];
    // Добавляем словарь в массив birthdays
    [birthdays addObject:[newPerson dictRepresentation]];
    //Записываем birthdays в user defults
    [[NSUserDefaults standardUserDefaults] setObject:birthdays forKey:kUserDefault];
    //Синхронизируем
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    // alert
}

@end
