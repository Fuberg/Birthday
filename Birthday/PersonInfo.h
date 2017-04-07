//
//  PersonInfo.h
//  Birthday
//
//  Created by Сергей Мусаэлян on 04.04.17.
//  Copyright © 2017 Musaelyan Sergei. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kName @"userName"
#define kDate @"userBirthDate"
#define kUserDefault @"Key"

@interface PersonInfo : NSObject
@property (strong) NSString *name;
@property (nonatomic) NSTimeInterval birthdayDate;

- (NSDictionary *)dictRepresentation;
+ (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
