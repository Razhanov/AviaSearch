//
//  TicketsViewController.m
//  AviaSearch
//
//  Created by Karim Razhanov on 05/12/2018.
//  Copyright © 2018 Karim Razhanov. All rights reserved.
//

#import "TicketsViewController.h"
#import "TicketTableViewCell.h"
#import "CoreDataHelper.h"

#define TicketCellReuseIdentifier @"TicketCellIdentifier"

@interface TicketsViewController()
@property (nonatomic, strong) NSArray *tickets;
@end


@implementation TicketsViewController {
     BOOL isFavourites;
}


- (instancetype)initFavouriteTicketsController {
    self = [super init];
    if (self) {
        isFavourites = YES;
        self.tickets = [NSArray new];
        self.title = @"Избранное";
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self.tableView registerClass:[TicketTableViewCell class] forCellReuseIdentifier:TicketCellReuseIdentifier];
    }
    return self;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if (isFavourites) {
        self.navigationController.navigationBar.prefersLargeTitles = YES;
        _tickets = [[CoreDataHelper sharedInstance] favourites];
        [self.tableView reloadData];
    }
}



#pragma mark - UITableViewDataSource & UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _tickets.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TicketTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TicketCellReuseIdentifier forIndexPath:indexPath];
    if (isFavourites) {
        cell.favouriteTicket = [_tickets objectAtIndex:indexPath.row];
    } else {
        cell.ticket = [_tickets objectAtIndex:indexPath.row];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 140.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (isFavourites) return;
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Действия с билетом" message:@"Что необходимо сделать с выбранным билетом?" preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *favouriteAction;
    if ([[CoreDataHelper sharedInstance] isFavourite: [_tickets objectAtIndex:indexPath.row]]) {
        favouriteAction = [UIAlertAction actionWithTitle:@"Удалить из избранного" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
            [[CoreDataHelper sharedInstance] removeFromFavourite:[_tickets objectAtIndex:indexPath.row]];
        }];
    } else {
        favouriteAction = [UIAlertAction actionWithTitle:@"Добавить в избранное" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [[CoreDataHelper sharedInstance] addToFavourite:[_tickets objectAtIndex:indexPath.row]];
        }];
    }
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Закрыть" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:favouriteAction];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];
}



- (instancetype)initWithTickets:(NSArray *)tickets {
    self = [super init];
    if (self)
    {
        _tickets = tickets;
        self.title = @"Билеты";
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self.tableView registerClass:[TicketTableViewCell class] forCellReuseIdentifier:TicketCellReuseIdentifier];
    }
    return self;
}




@end


