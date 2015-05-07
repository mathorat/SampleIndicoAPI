//
//  FirstViewController.m
//  SentimentAnalysisTest
//
//  Created by Mohan Thorat on 4/19/15.
//  Copyright (c) 2015 Mohan Thorat. All rights reserved.
//

#import "FirstViewController.h"
#import "IndicoAPI.h"
#import "ICSentimentObject.h"


@interface FirstViewController ()
@property (nonatomic,strong) NSArray *inputList;
@end

@implementation FirstViewController


- (IBAction)getButtonClicked:(id)sender {
    __block int counter = 0;
    __block int count = 0;
    __block NSDate *startTime, *endTime;
    
    if([self.textField.text isEqualToString:nil]) {
        count = 1;
    } else {
        count = self.textField.text.intValue;
    }
    
    startTime = [NSDate date];
    for (int i=0; i < count; i++) {
        for (NSString* input in self.inputList) {
            [[IndicoAPI service] sentimentAnalysisWithText:input completionHandler:^(NSDictionary *result, NSError *error) {
                if (result) {
                    //Convert result to model object.
                    ICSentimentObject *object = [[ICSentimentObject alloc] initWithDictionary:result];
                    NSLog(@"Sentiment Score: %lf",object.results);
                    counter++;
                   if (counter == (self.inputList.count * count)) {
                       endTime = [NSDate date];
                       NSTimeInterval executionTime = [endTime timeIntervalSinceDate:startTime];
                       self.lable.text = [NSString stringWithFormat:@"%f", executionTime];
                       NSLog(@"Total executionTime = %f", executionTime);
                     //self.lable.text = [NSString stringWithFormat:@"%lf",((double)endTime - startTime)/CLOCKS_PER_SEC];
                     // NSLog(@"%lf",((double)endTime - startTime)/CLOCKS_PER_SEC);
                    }
                }
                else if (error) {
                    //Error handling code goes here
                }
            }];
        }
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.inputList = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"InputData" ofType:@"plist"]];
    NSLog(@"Input data: %@",self.inputList);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
