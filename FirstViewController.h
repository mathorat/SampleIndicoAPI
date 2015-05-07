//
//  FirstViewController.h
//  SentimentAnalysisTest
//
//  Created by Mohan Thorat on 4/19/15.
//  Copyright (c) 2015 Mohan Thorat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (nonatomic,strong) IBOutlet UIButton *getButton;
@property (nonatomic,strong) IBOutlet UILabel *lable;
@property (nonatomic,strong) IBOutlet UITextField *textField;

- (IBAction)getButtonClicked:(id)sender;

@end

