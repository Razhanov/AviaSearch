//
//  MapPrice.h
//  AviaSearch
//
//  Created by Karim Razhanov on 06/01/2019.
//  Copyright © 2019 Karim Razhanov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface MapPrice : NSObject

@property (strong, nonatomic) City *destination;
@property (strong, nonatomic) City *origin;
@property (strong, nonatomic) NSDate *departure;
@property (strong, nonatomic) NSDate *returnDate;
@property (nonatomic) NSInteger numberOfChanges;
@property (nonatomic) NSInteger value;
@property (nonatomic) NSInteger distance;
@property (nonatomic) BOOL actual;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary withOrigin: (City *)origin;

@end

NS_ASSUME_NONNULL_END
