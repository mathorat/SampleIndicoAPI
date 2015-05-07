//
//  IndicoAPIConstants.m
//  Indico iOS Demo
//
//  Created by Indico on 14/10/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import "IndicoAPIConstants.h"

/*!--------------------------------------------------------------
    @discussion Server configuration
 --------------------------------------------------------------*/

NSString *const kICHTTPServerURL =   @"http://apiv1.indico.io";
//NSString *const kICHTTPServerURL =   @"http://146.148.76.110";


/*!--------------------------------------------------------------
    @discussion Global Constants
 --------------------------------------------------------------*/

NSString *const kICDataKey  =   @"data";
NSString *const kICResultsKey  =   @"results";
NSString *const kICErrorKey  =   @"error";


/*!--------------------------------------------------------------
    @discussion Sentiment Analysis:    Determine whether a body of text has positive or negative connotations.
    @abstract   /sentiment
    @method     POST
 --------------------------------------------------------------*/

NSString *const kICSentimentAnalysisAPIPath  =   @"/sentiment";

/*  Request */
//{'data': "raw text string"}

/*  Response */
//Success:  {'results': float}
//Failure:  {'error': 'Error message'}


/*!--------------------------------------------------------------
    @discussion Political Sentiment Analysis:  Determine the political leanings of raw text.
    @abstract   /sentiment
    @method     POST
 --------------------------------------------------------------*/

NSString *const kICPoliticalSentimentAnalysisAPIPath  =   @"/political";

/*  Request */
//{'data': "raw text string"}


/*  Response */
//Success:  {"results": {"Libertarian": 0.12289240498688701, "Liberal": 0.2593418234915211, "Green": 0.2840248221865976, "Conservative": 0.3337409493349943}}
//Failure:  {'error': "Error message."}

NSString *const kICLibertarianKey  =   @"Libertarian";
NSString *const kICLiberalKey  =   @"Liberal";
NSString *const kICGreenKey  =   @"Green";
NSString *const kICConservativeKey  =   @"Conservative";

/*!--------------------------------------------------------------
    @discussion Language Detection:    Detect the language of a body of text.
    @abstract   /language
    @method     POST
 --------------------------------------------------------------*/

NSString *const kICLanguageDetectionAPIPath  =   @"/language";

/*  Request */
//{'data': "raw text string"}


/*  Response */
//Success:  {"results": {"Swedish": 1.7736381418276806e-05, "Vietnamese": 0.0002696903919829309, "Romanian": 0.013553162454601104, "Dutch": 0.0006068216765583916, "Korean": 0.0009360237635627687, "Danish": 0.0006281435741978369, "Indonesian": 0.0014835324227383754, "Latin": 0.002618765049303543, "Hungarian": 0.0004644406512697262, "Persian (Farsi)": 0.0008510625432009462, "Lithuanian": 0.0013529763047219578, "French": 6.400430931632971e-06, "Norwegian": 0.002074021816115711, "Russian": 0.01644208961632183, "Thai": 0.002476537193658294, "Finnish": 0.0032155353818932343, "Hebrew": 0.0008752031126743955, "Bulgarian": 0.007053191411109287, "Turkish": 0.01073088167304241, "Greek": 0.026313601897256626, "Tagalog": 0.0017638433840354171, "English": 0.854787799298937, "Arabic": 0.007325061456367038, "Italian": 0.0024097047347849472, "Portuguese": 0.0005590369789290517, "Chinese": 0.00912434460232306, "German": 0.018230564774224245, "Japanese": 0.0002395643571133973, "Czech": 0.0002492889534732731, "Slovak": 0.0008509486592350028, "Spanish": 0.0013635360838177499, "Polish": 0.007975462152917712, "Esperanto": 0.0031510268172829066}}
//Failure:  {'error': 'Error message'}

NSString *const kICSwedishKey  =   @"Swedish";
NSString *const kICVietnameseKey  =   @"Vietnamese";
NSString *const kICRomanianKey  =   @"Romanian";
NSString *const kICDutchKey  =   @"Dutch";
NSString *const kICKoreanKey  =   @"Korean";
NSString *const kICDanishKey  =   @"Danish";
NSString *const kICIndonesianKey  =   @"Indonesian";
NSString *const kICLatinKey  =   @"Latin";
NSString *const kICHungarianKey  =   @"Hungarian";
NSString *const kICPersianFarsiKey  =   @"Persian (Farsi)";
NSString *const kICLithuanianKey  =   @"Lithuanian";
NSString *const kICFrenchKey  =   @"French";
NSString *const kICNorwegianKey  =   @"Norwegian";
NSString *const kICRussianKey  =   @"Russian";
NSString *const kICThaiKey  =   @"Thai";
NSString *const kICFinnishKey  =   @"Finnish";
NSString *const kICHebrewKey  =   @"Hebrew";
NSString *const kICBulgarianKey  =   @"Bulgarian";
NSString *const kICTurkishKey  =   @"Turkish";
NSString *const kICGreekKey  =   @"Greek";
NSString *const kICTagalogKey  =   @"Tagalog";
NSString *const kICEnglishKey  =   @"English";
NSString *const kICArabicKey  =   @"Arabic";
NSString *const kICItalianKey  =   @"Italian";
NSString *const kICPortugueseKey  =   @"Portuguese";
NSString *const kICChineseKey  =   @"Chinese";
NSString *const kICGermanKey  =   @"German";
NSString *const kICJapaneseKey  =   @"Japanese";
NSString *const kICCzechKey  =   @"Czech";
NSString *const kICSlovakKey  =   @"Slovak";
NSString *const kICSpanishKey  =   @"Spanish";
NSString *const kICPolishKey  =   @"Polish";
NSString *const kICEsperantoKey  =   @"Esperanto";


/*!--------------------------------------------------------------
    @discussion Facial Emotion Recognition:  Extract emotions from images of faces.
    @abstract   /fer
    @method     POST
 --------------------------------------------------------------*/

NSString *const kICFaceEmotionRecognitionAPIPath  =   @"/fer";

/*  Request */
//{'data': "1,2"}


/*  Response */
//Success:  {'results': {'Angry': float, 'Sad': float, 'Neutral': float, 'Surprise': float, 'Fear': float, 'Happy': float}}
//Failure:  {'error': 'Error message'}
NSString *const kICAngryKey  =   @"Angry";
NSString *const kICSadKey  =   @"Sad";
NSString *const kICNeutralKey  =   @"Neutral";
NSString *const kICSurpriseKey  =   @"Surprise";
NSString *const kICFearKey  =   @"Fear";
NSString *const kICHappyKey  =   @"Happy";



/*!--------------------------------------------------------------
    @discussion Facial Features:   A feature transform for images of faces.
    @abstract   /facialfeatures
    @method     POST
 --------------------------------------------------------------*/

NSString *const kICFacialFeaturesAPIPath  =   @"/facialfeatures";

/*  Request */
//{'data': "1,2"}


/*  Response */
//Success:  {'results': [float, float, float, ...]}
//Failure:  {}



/*!--------------------------------------------------------------
    @discussion Image Features:    A feature transform for generic images
    @abstract   /imagefeatures
    @method     POST
 --------------------------------------------------------------*/

NSString *const kICImageFeaturesAPIPath  =   @"/imagefeatures";

/*  Request */
//{'data': "1,2"}


/*  Response */
//Success:  {'results': [float, float, float, ...]}
//Failure:  {'error': 'Error message'}

/*!--------------------------------------------------------------
 --------------------------------------------------------------*/





