//
//  IndicoAPI.m
//  Indico iOS Demo
//
//  Created by Indico on 14/10/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import "IndicoAPI.h"
#import "IndicoAPIConstants.h"
#import "UIImage+ICHelper.h"

@implementation IndicoAPI

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self setServerURL:kICHTTPServerURL];
        [self setParameterType:IQRequestParameterTypeApplicationJSON];
        [self setDefaultContentType:kIQContentTypeApplicationJson];

    }
    return self;
}

/*!--------------------------------------------------------------
 @discussion Sentiment Analysis:    Determine whether a body of text has positive or negative connotations.
 @abstract   /sentiment
 @method     POST
 --------------------------------------------------------------*/

-(IQURLConnection*)sentimentAnalysisWithText:(NSString*)text completionHandler:(IQDictionaryCompletionBlock)completionHandler
{
    NSDictionary *attributes = @{kICDataKey:text};

    return [self requestWithPath:kICSentimentAnalysisAPIPath httpMethod:kIQHTTPMethodPOST parameter:attributes completionHandler:completionHandler];
}

/*!--------------------------------------------------------------
 @discussion Political Sentiment Analysis:  Determine the political leanings of raw text.
 @abstract   /sentiment
 @method     POST
 --------------------------------------------------------------*/

-(IQURLConnection*)politicalSentimentAnalysisWithText:(NSString*)text completionHandler:(IQDictionaryCompletionBlock)completionHandler
{
    NSDictionary *attributes = @{kICDataKey:text};
    
    return [self requestWithPath:kICPoliticalSentimentAnalysisAPIPath httpMethod:kIQHTTPMethodPOST parameter:attributes completionHandler:completionHandler];
}

/*!--------------------------------------------------------------
 @discussion Language Detection:    Detect the language of a body of text.
 @abstract   /language
 @method     POST
 --------------------------------------------------------------*/

-(IQURLConnection*)languageDetectionWithText:(NSString*)text completionHandler:(IQDictionaryCompletionBlock)completionHandler
{
    NSDictionary *attributes = @{kICDataKey:text};
    
    return [self requestWithPath:kICLanguageDetectionAPIPath httpMethod:kIQHTTPMethodPOST parameter:attributes completionHandler:completionHandler];
}

/*!--------------------------------------------------------------
 @discussion Facial Emotion Recognition:  Extract emotions from images of faces.
 @abstract   /fer
 @method     POST
 --------------------------------------------------------------*/

-(IQURLConnection*)facialEmotionRecognitionWithImage:(UIImage*)image completionHandler:(IQDictionaryCompletionBlock)completionHandler
{
    NSDictionary *attributes = @{kICDataKey: [image IC_API_GrayScaleValues]};
    
    return [self requestWithPath:kICFaceEmotionRecognitionAPIPath httpMethod:kIQHTTPMethodPOST parameter:attributes completionHandler:completionHandler];
}

-(IQURLConnection*)facialEmotionRecognitionWithImage:(UIImage*)image resizeToSize:(CGSize)size completionHandler:(IQDictionaryCompletionBlock)completionHandler
{
    return [self facialEmotionRecognitionWithImage:[image IC_API_resizeToSize:size] completionHandler:completionHandler];
}

/*!--------------------------------------------------------------
 @discussion Facial Features:   A feature transform for images of faces.
 @abstract   /facialfeatures
 @method     POST
 --------------------------------------------------------------*/

-(IQURLConnection*)facialFeaturesWithImage:(UIImage*)image completionHandler:(IQDictionaryCompletionBlock)completionHandler
{
    NSDictionary *attributes = @{kICDataKey:[image IC_API_GrayScaleValues]};
    
    return [self requestWithPath:kICFacialFeaturesAPIPath httpMethod:kIQHTTPMethodPOST parameter:attributes completionHandler:completionHandler];
}

-(IQURLConnection*)facialFeaturesWithImage:(UIImage*)image resizeToSize:(CGSize)size completionHandler:(IQDictionaryCompletionBlock)completionHandler
{
    return [self facialFeaturesWithImage:[image IC_API_resizeToSize:size] completionHandler:completionHandler];
}

/*!--------------------------------------------------------------
 @discussion Image Features:    A feature transform for generic images
 @abstract   /imagefeatures
 @method     POST
 --------------------------------------------------------------*/

-(IQURLConnection*)imageFeaturesWithImage:(UIImage*)image completionHandler:(IQDictionaryCompletionBlock)completionHandler
{
    NSDictionary *attributes = @{kICDataKey:[image IC_API_RGBScaleValues]};
    
    return [self requestWithPath:kICImageFeaturesAPIPath httpMethod:kIQHTTPMethodPOST parameter:attributes completionHandler:completionHandler];
}

-(IQURLConnection*)imageFeaturesWithImage:(UIImage*)image resizeToSize:(CGSize)size completionHandler:(IQDictionaryCompletionBlock)completionHandler
{
    return [self imageFeaturesWithImage:[image IC_API_resizeToSize:size] completionHandler:completionHandler];
}

/*!--------------------------------------------------------------
 --------------------------------------------------------------*/

@end
