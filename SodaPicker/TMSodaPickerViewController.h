//
//  TMSodaPickerViewController.h
//  SodaPicker
//
//  Created by John Tumminaro on 3/16/13.
//  Copyright (c) 2013 ThoughtMatrix. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Soda;

@interface TMSodaPickerViewController : UIViewController

@property (nonatomic) Soda *sodaOne;
@property (nonatomic) Soda *sodaTwo;

@property (strong, nonatomic) IBOutlet UIImageView *sodaOneImage;
@property (strong, nonatomic) IBOutlet UIImageView *sodaTwoImage;
@property (strong, nonatomic) IBOutlet UILabel *sodaOneLabel;
@property (strong, nonatomic) IBOutlet UILabel *sodaTwoLabel;
@property (strong, nonatomic) IBOutlet UIButton *sodaOneButton;
@property (strong, nonatomic) IBOutlet UIButton *sodaTwoButton;
@property (strong, nonatomic) IBOutlet UILabel *sodaTwoAvailable;
@property (strong, nonatomic) IBOutlet UILabel *sodaOneAvailable;

- (IBAction)sodaOnePurchaseClick:(id)sender;
- (IBAction)sodaTwoPurchaseClick:(id)sender;

@end
