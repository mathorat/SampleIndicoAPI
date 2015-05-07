//
//  IndicoAPI.h
//  Indico iOS Demo
//
//  Created by Indico on 14/10/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import "IQHTTPService.h"
#import <CoreGraphics/CGGeometry.h>

@interface IndicoAPI : IQHTTPService

/*!--------------------------------------------------------------
 @discussion Sentiment Analysis:    Determine whether a body of text has positive or negative connotations.
 @abstract   /sentiment
 @method     POST
 --------------------------------------------------------------*/

-(IQURLConnection*)sentimentAnalysisWithText:(NSString*)text completionHandler:(IQDictionaryCompletionBlock)completionHandler;

/*!--------------------------------------------------------------
 @discussion Political Sentiment Analysis:  Determine the political leanings of raw text.
 @abstract   /sentiment
 @method     POST
 --------------------------------------------------------------*/

-(IQURLConnection*)politicalSentimentAnalysisWithText:(NSString*)text completionHandler:(IQDictionaryCompletionBlock)completionHandler;

/*!--------------------------------------------------------------
 @discussion Language Detection:    Detect the language of a body of text.
 @abstract   /language
 @method     POST
 --------------------------------------------------------------*/

-(IQURLConnection*)languageDetectionWithText:(NSString*)text completionHandler:(IQDictionaryCompletionBlock)completionHandler;

/*!--------------------------------------------------------------
 @discussion Facial Emotion Recognition:  Extract emotions from images of faces.
 @abstract   /fer
 @method     POST
 --------------------------------------------------------------*/

-(IQURLConnection*)facialEmotionRecognitionWithImage:(UIImage*)image completionHandler:(IQDictionaryCompletionBlock)completionHandler;
-(IQURLConnection*)facialEmotionRecognitionWithImage:(UIImage*)image resizeToSize:(CGSize)size completionHandler:(IQDictionaryCompletionBlock)completionHandler;

/*!--------------------------------------------------------------
 @discussion Facial Features:   A feature transform for images of faces.
 @abstract   /facialfeatures
 @method     POST
 --------------------------------------------------------------*/

-(IQURLConnection*)facialFeaturesWithImage:(UIImage*)image completionHandler:(IQDictionaryCompletionBlock)completionHandler;
-(IQURLConnection*)facialFeaturesWithImage:(UIImage*)image resizeToSize:(CGSize)size completionHandler:(IQDictionaryCompletionBlock)completionHandler;

/*!--------------------------------------------------------------
 @discussion Image Features:    A feature transform for generic images
 @abstract   /imagefeatures
 @method     POST
 --------------------------------------------------------------*/

-(IQURLConnection*)imageFeaturesWithImage:(UIImage*)image completionHandler:(IQDictionaryCompletionBlock)completionHandler;
-(IQURLConnection*)imageFeaturesWithImage:(UIImage*)image resizeToSize:(CGSize)size completionHandler:(IQDictionaryCompletionBlock)completionHandler;

/*!--------------------------------------------------------------
 --------------------------------------------------------------*/

@end

