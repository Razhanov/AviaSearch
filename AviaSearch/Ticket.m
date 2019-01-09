//
//  Ticket.m
//  AviaSearch
//
//  Created by Karim Razhanov on 05/12/2018.
//  Copyright © 2018 Karim Razhanov. All rights reserved.
//

#import "Ticket.h"

@implementation Ticket

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _airline = [dictionary valueForKey:@"airline"];
        _expires = dateFromString([dictionary valueForKey:@"expires_at"]);
        _departure = dateFromString([dictionary valueForKey:@"departure_at"]);
        _flightNumber = [dictionary valueForKey:@"flight_number"];
        _price = [dictionary valueForKey:@"price"];
        _returnDate = dateFromString([dictionary valueForKey:@"return_at"]);
    }
    return self;
}

NSDate *dateFromString(NSString *dateString) {
    if (!dateString) { return  nil; }
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSString *correctSrtringDate = [dateString stringByReplacingOccurrencesOfString:@"T" withString:@" "];
    correctSrtringDate = [correctSrtringDate stringByReplacingOccurrencesOfString:@"Z" withString:@" "];
    dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    return [dateFormatter dateFromString: correctSrtringDate];
}

@end

