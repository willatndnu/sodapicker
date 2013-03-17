//
//  Soda.h
//  SodaPicker
//
//  Created by John Tumminaro on 3/16/13.
//  Copyright (c) 2013 ThoughtMatrix. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Soda : NSObject

@property (nonatomic) NSString *sodaName;
@property (nonatomic) UIImage *sodaPicture;
@property (nonatomic) NSString *sodaPrice;
@property (nonatomic) int numberAvailable;

+ (NSArray *)getSodasAvailableForPurchase;
+ (BOOL)purchaseThisSoda:(Soda *)soda;

@end
