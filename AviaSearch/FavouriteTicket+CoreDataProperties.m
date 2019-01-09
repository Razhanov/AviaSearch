//
//  FavouriteTicket+CoreDataProperties.m
//  AviaSearch
//
//  Created by Karim Razhanov on 09/01/2019.
//  Copyright © 2019 Karim Razhanov. All rights reserved.
//
//

#import "FavouriteTicket+CoreDataProperties.h"

@implementation FavouriteTicket (CoreDataProperties)

+ (NSFetchRequest<FavouriteTicket *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"FavouriteTicket"];
}

@dynamic airline;
@dynamic created;
@dynamic departure;
@dynamic expires;
@dynamic flightNumber;
@dynamic from;
@dynamic price;
@dynamic returnDate;
@dynamic to;

@end
