//
//  Soda.m
//  SodaPicker
//
//  Created by John Tumminaro on 3/16/13.
//  Copyright (c) 2013 ThoughtMatrix. All rights reserved.
//

#import "Soda.h"

@implementation Soda

+ (NSArray *)getSodasAvailableForPurchase
{
    Soda *soda1 = [[Soda alloc] init];
    Soda *soda2 = [[Soda alloc] init];
    
    soda1.sodaName = @"Pepsi";
    soda1.sodaPicture = [UIImage imageNamed:@"pepsi.png"];
    soda1.sodaPrice = @"$0.75";
    soda1.numberAvailable = 10;
    
    soda2.sodaName = @"Mountain Dew";
    soda2.sodaPicture = [UIImage imageNamed:@"pepsi.png"];
    soda2.sodaPrice = @"$0.85";
    soda2.numberAvailable = 5;
    
    NSArray *returnArray = [[NSArray alloc] initWithObjects:soda1, soda2, nil];
    
    return returnArray;
}

+ (BOOL)purchaseThisSoda:(Soda *)soda
{
    if (soda.numberAvailable > 0) {
        NSLog(@"Purchased %@", soda.sodaName);
        return YES;
    } else {
        NSLog(@"No more soda!");
        return NO;
    }
    
}


@end
