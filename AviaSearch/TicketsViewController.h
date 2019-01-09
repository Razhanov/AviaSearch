//
//  TicketsViewController.h
//  AviaSearch
//
//  Created by Karim Razhanov on 05/12/2018.
//  Copyright © 2018 Karim Razhanov. All rights reserved.
//
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TicketsViewController : UITableViewController

- (instancetype)initWithTickets:(NSArray *)tickets;
- (instancetype)initFavouriteTicketsController;
//@property (nonatomic, strong) UITableView *tableView;
@end

NS_ASSUME_NONNULL_END
