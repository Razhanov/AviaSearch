//
//  CoreDataHelper.h
//  AviaSearch
//
//  Created by Karim Razhanov on 09/01/2019.
//  Copyright © 2019 Karim Razhanov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "DataManager.h"
#import "FavouriteTicket+CoreDataClass.h"
#import "FavouriteTicket+CoreDataProperties.h"


NS_ASSUME_NONNULL_BEGIN

@interface CoreDataHelper : NSObject

+ (instancetype)sharedInstance;

- (BOOL)isFavourite:(Ticket *)ticket;
- (NSArray *)favourites;
- (void)addToFavourite:(Ticket *)ticket;
- (void)removeFromFavourite:(Ticket *)ticket;

@end

NS_ASSUME_NONNULL_END
