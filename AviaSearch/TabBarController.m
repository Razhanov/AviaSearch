//
//  TabBarController.m
//  AviaSearch
//
//  Created by Karim Razhanov on 06/01/2019.
//  Copyright © 2019 Karim Razhanov. All rights reserved.
//

#import "TabBarController.h"
#import "MainViewController.h"
#import "MapViewController.h"
#import "TicketsViewController.h"


@interface TabBarController ()

@end

@implementation TabBarController

- (instancetype)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.viewControllers = [self createViewControllers];
        self.tabBar.tintColor = [UIColor blackColor];
    }
    return self;
}

- (NSArray<UIViewController*> *)createViewControllers {
    NSMutableArray<UIViewController*> *controllers = [NSMutableArray new];
    
    MainViewController *mainViewController = [[MainViewController alloc] init];
    mainViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Поиск" image:[UIImage imageNamed:@"search"] selectedImage:[UIImage imageNamed:@"search_selected"]];
    UINavigationController *mainNavigationController = [[UINavigationController alloc] initWithRootViewController:mainViewController];
    [controllers addObject:mainNavigationController];
    
    MapViewController *mapViewController = [[MapViewController alloc] init];
    mapViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Карта цен" image:[UIImage imageNamed:@"map"] selectedImage:[UIImage imageNamed:@"map_selected"]];
    UINavigationController *mapNavigationController = [[UINavigationController alloc] initWithRootViewController:mapViewController];
    [controllers addObject:mapNavigationController];
    
    TicketsViewController *favouriteViewController = [[TicketsViewController alloc] initFavouriteTicketsController];
    favouriteViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Избранное" image:[UIImage imageNamed:@"favourite"] selectedImage:[UIImage imageNamed:@"favourite_selected"]];
    UINavigationController *favouriteNavigationController = [[UINavigationController alloc] initWithRootViewController:favouriteViewController];
    [controllers addObject:favouriteNavigationController];
    
    return controllers;
}



@end
