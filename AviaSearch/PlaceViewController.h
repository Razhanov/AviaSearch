//
//  PlaceViewController.h
//  AviaSearch
//
//  Created by Karim Razhanov on 04/12/2018.
//  Copyright © 2018 Karim Razhanov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataManager.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum PlaceType {
    PlaceTypeArrival,
    PlaceTypeDeparture
} PlaceType;

typedef struct SearchRequest {
    __unsafe_unretained NSString *origin;
    __unsafe_unretained NSString *destination;
    __unsafe_unretained NSDate *departDate;
    __unsafe_unretained NSDate *returnDate;
} SearchRequest;


@protocol PlaceViewControllerDelegate <NSObject>
- (void)selectPlace:(id)place withType:(PlaceType)placeType andDataType:(DataSourceType)dataType;
@end


@interface PlaceViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) id<PlaceViewControllerDelegate>delegate;
- (instancetype)initWithType:(PlaceType)type;

@end

NS_ASSUME_NONNULL_END
