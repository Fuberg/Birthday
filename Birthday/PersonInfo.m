//
//  PersonInfo.m
//  Birthday
//
//  Created by Сергей Мусаэлян on 04.04.17.
//  Copyright © 2017 Musaelyan Sergei. All rights reserved.
//

#import "PersonInfo.h"

@implementation PersonInfo

- (NSDictionary *)dictRepresentation
{
    NSMutableDictionary *personDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                             self.name, kName,
                                             self.birthdayDate, kDate
                                             , nil];
    return personDictionary;
}

+ (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    PersonInfo *info = [self new];
    info.name = [dictionary objectForKey:kName];
    info.birthdayDate = [[dictionary objectForKey:kDate] doubleValue];

    return info;
}

@end
