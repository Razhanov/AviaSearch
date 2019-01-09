//
//  DataManager.h
//  AviaSearch
//
//  Created by Karim Razhanov on 29/11/2018.
//  Copyright © 2018 Karim Razhanov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Country.h"
#import "City.h"
#import "Airport.h"
#import "Ticket.h"

#define kDataManagerLoadDataDidComplete @"DataManagerLoadDataDidComplete"

typedef enum DataSourceType {
    DataSourceTypeCountry,
    DataSourceTypeCity,
    DataSourceTypeAirport
} DataSourceType;

NS_ASSUME_NONNULL_BEGIN


@interface DataManager : NSObject

+ (instancetype)sharedInstance;
- (void)loadData;
- (City *)cityForIATA:(NSString *)iata;
- (City *)cityForLocation:(CLLocation *)location;

@property (nonatomic, strong, readonly) NSArray *countries;
@property (nonatomic, strong, readonly) NSArray *cities;
@property (nonatomic, strong, readonly) NSArray *airports;


@end

NS_ASSUME_NONNULL_END
