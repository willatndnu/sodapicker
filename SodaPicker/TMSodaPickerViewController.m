//
//  TMSodaPickerViewController.m
//  SodaPicker
//
//  Created by John Tumminaro on 3/16/13.
//  Copyright (c) 2013 ThoughtMatrix. All rights reserved.
//

#import "TMSodaPickerViewController.h"
#import "Soda.h"

@interface TMSodaPickerViewController ()

@end

@implementation TMSodaPickerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *sodaList = [Soda getSodasAvailableForPurchase];
    
    NSLog(@"There are %lu sodas available to purchase", (unsigned long)sodaList.count);
    
    self.sodaOne = [sodaList objectAtIndex:0];
    NSLog(@"Soda One's name is: %@", self.sodaOne.sodaName);
    
    self.sodaTwo = [sodaList objectAtIndex:1];
    NSLog(@"Soda Two's name is: %@", self.sodaTwo.sodaName);
        
    self.sodaOneLabel.text = self.sodaOne.sodaName;
    [self.sodaOneButton setTitle:[NSString stringWithFormat:@"Purchase for %@", self.sodaOne.sodaPrice] forState:UIControlStateNormal];
    self.sodaOneImage.image = self.sodaOne.sodaPicture;
    self.sodaOneAvailable.text = [NSString stringWithFormat:@"%d available", self.sodaOne.numberAvailable];
    
    self.sodaTwoLabel.text = self.sodaTwo.sodaName;
    [self.sodaTwoButton setTitle:[NSString stringWithFormat:@"Purchase for %@", self.sodaTwo.sodaPrice] forState:UIControlStateNormal];
    self.sodaTwoImage.image = self.sodaTwo.sodaPicture;
    self.sodaTwoAvailable.text = [NSString stringWithFormat:@"%d available", self.sodaTwo.numberAvailable];
    
}


- (IBAction)sodaOnePurchaseClick:(id)sender {
    
    BOOL sodaPurchased = [Soda purchaseThisSoda:self.sodaOne];
    
    if (sodaPurchased == YES) {
        self.sodaOne.numberAvailable--;
        [self sodaPurchaseAlertWithSoda:self.sodaOne];
        
    } else {
        [self failedToPurchaseSoda];
    }

    
}

- (IBAction)sodaTwoPurchaseClick:(id)sender {
    
    BOOL sodaPurchased = [Soda purchaseThisSoda:self.sodaTwo];
    
    if (sodaPurchased == YES) {
        self.sodaTwo.numberAvailable--;
        [self sodaPurchaseAlertWithSoda:self.sodaTwo];
        
    } else {
        [self failedToPurchaseSoda];
    }


}

- (void)sodaPurchaseAlertWithSoda:(Soda *)soda
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Soda Purchased"
                                                        message:[NSString stringWithFormat:@"You have successfully purchased %@ for %@.", soda.sodaName, soda.sodaPrice]
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles: nil];
        
    NSLog(@"There are %d %@ now available.", soda.numberAvailable, soda.sodaName);
    self.sodaOneAvailable.text = [NSString stringWithFormat:@"%d available", self.sodaOne.numberAvailable];
    self.sodaTwoAvailable.text = [NSString stringWithFormat:@"%d available", self.sodaTwo.numberAvailable];
    
    [alertView show];
}

- (void)failedToPurchaseSoda
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Purchase Failed" message:@"There are no more of that soda left!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [alert show];
}

@end
