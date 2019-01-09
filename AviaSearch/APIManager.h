//
//  APIManager.h
//  AviaSearch
//
//  Created by Karim Razhanov on 05/12/2018.
//  Copyright © 2018 Karim Razhanov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataManager.h"
#import "PlaceViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface APIManager : NSObject

+ (instancetype)sharedInstance;
- (void)cityForCurrentIP:(void (^)(City *city))completion;

- (void)ticketsWithRequest:(SearchRequest)request withCompletion:(void (^)(NSArray *tickets))completion;

- (void)mapPricesFor:(City *)origin withCompletion:(void (^)(NSArray *prices))completion;

@end

NS_ASSUME_NONNULL_END
