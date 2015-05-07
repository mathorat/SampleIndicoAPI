//
//  IndicoAPIConstants.h
//  Indico iOS Demo
//
//  Created by Indico on 14/10/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import <Foundation/Foundation.h>

/*!--------------------------------------------------------------
 @discussion Server configuration
 --------------------------------------------------------------*/

extern NSString *const kICHTTPServerURL;

/*!--------------------------------------------------------------
 @discussion Global Constants
 --------------------------------------------------------------*/

extern NSString *const kICDataKey;
extern NSString *const kICResultsKey;
extern NSString *const kICErrorKey;

/*!--------------------------------------------------------------
 @discussion Sentiment Analysis:    Determine whether a body of text has positive or negative connotations.
 @abstract   /sentiment
 @method     POST
 --------------------------------------------------------------*/

extern NSString *const kICSentimentAnalysisAPIPath;

/*!--------------------------------------------------------------
 @discussion Political Sentiment Analysis:  Determine the political leanings of raw text.
 @abstract   /sentiment
 @method     POST
 --------------------------------------------------------------*/

extern NSString *const kICPoliticalSentimentAnalysisAPIPath;

extern NSString *const kICLibertarianKey;
extern NSString *const kICLiberalKey;
extern NSString *const kICGreenKey;
extern NSString *const kICConservativeKey;

/*!--------------------------------------------------------------
 @discussion Language Detection:    Detect the language of a body of text.
 @abstract   /language
 @method     POST
 --------------------------------------------------------------*/

extern NSString *const kICLanguageDetectionAPIPath;

extern NSString *const kICSwedishKey;
extern NSString *const kICVietnameseKey;
extern NSString *const kICRomanianKey;
extern NSString *const kICDutchKey;
extern NSString *const kICKoreanKey;
extern NSString *const kICDanishKey;
extern NSString *const kICIndonesianKey;
extern NSString *const kICLatinKey;
extern NSString *const kICHungarianKey;
extern NSString *const kICPersianFarsiKey;
extern NSString *const kICLithuanianKey;
extern NSString *const kICFrenchKey;
extern NSString *const kICNorwegianKey;
extern NSString *const kICRussianKey;
extern NSString *const kICThaiKey;
extern NSString *const kICFinnishKey;
extern NSString *const kICHebrewKey;
extern NSString *const kICBulgarianKey;
extern NSString *const kICTurkishKey;
extern NSString *const kICGreekKey;
extern NSString *const kICTagalogKey;
extern NSString *const kICEnglishKey;
extern NSString *const kICArabicKey;
extern NSString *const kICItalianKey;
extern NSString *const kICPortugueseKey;
extern NSString *const kICChineseKey;
extern NSString *const kICGermanKey;
extern NSString *const kICJapaneseKey;
extern NSString *const kICCzechKey;
extern NSString *const kICSlovakKey;
extern NSString *const kICSpanishKey;
extern NSString *const kICPolishKey;
extern NSString *const kICEsperantoKey;

/*!--------------------------------------------------------------
 @discussion Facial Emotion Recognition:  Extract emotions from images of faces.
 @abstract   /fer
 @method     POST
 --------------------------------------------------------------*/

extern NSString *const kICFaceEmotionRecognitionAPIPath;

extern NSString *const kICAngryKey;
extern NSString *const kICSadKey;
extern NSString *const kICNeutralKey;
extern NSString *const kICSurpriseKey;
extern NSString *const kICFearKey;
extern NSString *const kICHappyKey;

/*!--------------------------------------------------------------
 @discussion Facial Features:   A feature transform for images of faces.
 @abstract   /facialfeatures
 @method     POST
 --------------------------------------------------------------*/

extern NSString *const kICFacialFeaturesAPIPath;

/*!--------------------------------------------------------------
 @discussion Image Features:    A feature transform for generic images
 @abstract   /imagefeatures
 @method     POST
 --------------------------------------------------------------*/

extern NSString *const kICImageFeaturesAPIPath;

/*!--------------------------------------------------------------
 --------------------------------------------------------------*/


