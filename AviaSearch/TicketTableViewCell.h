//
//  TicketTableViewCell.h
//  AviaSearch
//
//  Created by Karim Razhanov on 05/12/2018.
//  Copyright © 2018 Karim Razhanov. All rights reserved.
//

#import "DataManager.h"
#import "APIManager.h"
#import "Ticket.h"
#import "CoreDataHelper.h"

@interface TicketTableViewCell: UITableViewCell

@property (nonatomic, strong) Ticket *ticket;
- (void)setFavouriteTicket:(FavouriteTicket *)favouriteTicket;


@end

