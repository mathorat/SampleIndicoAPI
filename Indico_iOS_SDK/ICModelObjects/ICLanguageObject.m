//
//  ICLanguageObject.m
//
//  Created by Indico  on 15/10/14
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "ICLanguageObject.h"

@implementation ICLanguageObject

@synthesize vietnamese = _vietnamese;
@synthesize turkish = _turkish;
@synthesize russian = _russian;
@synthesize spanish = _spanish;
@synthesize dutch = _dutch;
@synthesize hebrew = _hebrew;
@synthesize bulgarian = _bulgarian;
@synthesize hungarian = _hungarian;
@synthesize slovak = _slovak;
@synthesize korean = _korean;
@synthesize danish = _danish;
@synthesize chinese = _chinese;
@synthesize french = _french;
@synthesize finnish = _finnish;
@synthesize english = _english;
@synthesize esperanto = _esperanto;
@synthesize persianFarsi = _persianFarsi;
@synthesize tagalog = _tagalog;
@synthesize portuguese = _portuguese;
@synthesize thai = _thai;
@synthesize italian = _italian;
@synthesize romanian = _romanian;
@synthesize indonesian = _indonesian;
@synthesize latin = _latin;
@synthesize greek = _greek;
@synthesize czech = _czech;
@synthesize german = _german;
@synthesize polish = _polish;
@synthesize lithuanian = _lithuanian;
@synthesize norwegian = _norwegian;
@synthesize japanese = _japanese;
@synthesize arabic = _arabic;
@synthesize swedish = _swedish;


- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super initWithDictionary:dict];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]])
    {
            self.vietnamese = [[dict objectOrNilForKey:kICVietnameseKey] doubleValue];
            self.turkish = [[dict objectOrNilForKey:kICTurkishKey] doubleValue];
            self.russian = [[dict objectOrNilForKey:kICRussianKey] doubleValue];
            self.spanish = [[dict objectOrNilForKey:kICSpanishKey] doubleValue];
            self.dutch = [[dict objectOrNilForKey:kICDutchKey] doubleValue];
            self.hebrew = [[dict objectOrNilForKey:kICHebrewKey] doubleValue];
            self.bulgarian = [[dict objectOrNilForKey:kICBulgarianKey] doubleValue];
            self.hungarian = [[dict objectOrNilForKey:kICHungarianKey] doubleValue];
            self.slovak = [[dict objectOrNilForKey:kICSlovakKey] doubleValue];
            self.korean = [[dict objectOrNilForKey:kICKoreanKey] doubleValue];
            self.danish = [[dict objectOrNilForKey:kICDanishKey] doubleValue];
            self.chinese = [[dict objectOrNilForKey:kICChineseKey] doubleValue];
            self.french = [[dict objectOrNilForKey:kICFrenchKey] doubleValue];
            self.finnish = [[dict objectOrNilForKey:kICFinnishKey] doubleValue];
            self.english = [[dict objectOrNilForKey:kICEnglishKey] doubleValue];
            self.esperanto = [[dict objectOrNilForKey:kICEsperantoKey] doubleValue];
            self.persianFarsi = [[dict objectOrNilForKey:kICPersianFarsiKey] doubleValue];
            self.tagalog = [[dict objectOrNilForKey:kICTagalogKey] doubleValue];
            self.portuguese = [[dict objectOrNilForKey:kICPortugueseKey] doubleValue];
            self.thai = [[dict objectOrNilForKey:kICThaiKey] doubleValue];
            self.italian = [[dict objectOrNilForKey:kICItalianKey] doubleValue];
            self.romanian = [[dict objectOrNilForKey:kICRomanianKey] doubleValue];
            self.indonesian = [[dict objectOrNilForKey:kICIndonesianKey] doubleValue];
            self.latin = [[dict objectOrNilForKey:kICLatinKey] doubleValue];
            self.greek = [[dict objectOrNilForKey:kICGreekKey] doubleValue];
            self.czech = [[dict objectOrNilForKey:kICCzechKey] doubleValue];
            self.german = [[dict objectOrNilForKey:kICGermanKey] doubleValue];
            self.polish = [[dict objectOrNilForKey:kICPolishKey] doubleValue];
            self.lithuanian = [[dict objectOrNilForKey:kICLithuanianKey] doubleValue];
            self.norwegian = [[dict objectOrNilForKey:kICNorwegianKey] doubleValue];
            self.japanese = [[dict objectOrNilForKey:kICJapaneseKey] doubleValue];
            self.arabic = [[dict objectOrNilForKey:kICArabicKey] doubleValue];
            self.swedish = [[dict objectOrNilForKey:kICSwedishKey] doubleValue];
    }
    
    return self;
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionaryWithDictionary:[super dictionaryRepresentation]];
    [mutableDict setValue:[NSNumber numberWithDouble:self.vietnamese] forKey:kICVietnameseKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.turkish] forKey:kICTurkishKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.russian] forKey:kICRussianKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.spanish] forKey:kICSpanishKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.dutch] forKey:kICDutchKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.hebrew] forKey:kICHebrewKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.bulgarian] forKey:kICBulgarianKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.hungarian] forKey:kICHungarianKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.slovak] forKey:kICSlovakKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.korean] forKey:kICKoreanKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.danish] forKey:kICDanishKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.chinese] forKey:kICChineseKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.french] forKey:kICFrenchKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.finnish] forKey:kICFinnishKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.english] forKey:kICEnglishKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.esperanto] forKey:kICEsperantoKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.persianFarsi] forKey:kICPersianFarsiKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.tagalog] forKey:kICTagalogKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.portuguese] forKey:kICPortugueseKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.thai] forKey:kICThaiKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.italian] forKey:kICItalianKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.romanian] forKey:kICRomanianKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.indonesian] forKey:kICIndonesianKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.latin] forKey:kICLatinKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.greek] forKey:kICGreekKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.czech] forKey:kICCzechKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.german] forKey:kICGermanKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.polish] forKey:kICPolishKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lithuanian] forKey:kICLithuanianKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.norwegian] forKey:kICNorwegianKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.japanese] forKey:kICJapaneseKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.arabic] forKey:kICArabicKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.swedish] forKey:kICSwedishKey];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];

    self.vietnamese = [aDecoder decodeDoubleForKey:kICVietnameseKey];
    self.turkish = [aDecoder decodeDoubleForKey:kICTurkishKey];
    self.russian = [aDecoder decodeDoubleForKey:kICRussianKey];
    self.spanish = [aDecoder decodeDoubleForKey:kICSpanishKey];
    self.dutch = [aDecoder decodeDoubleForKey:kICDutchKey];
    self.hebrew = [aDecoder decodeDoubleForKey:kICHebrewKey];
    self.bulgarian = [aDecoder decodeDoubleForKey:kICBulgarianKey];
    self.hungarian = [aDecoder decodeDoubleForKey:kICHungarianKey];
    self.slovak = [aDecoder decodeDoubleForKey:kICSlovakKey];
    self.korean = [aDecoder decodeDoubleForKey:kICKoreanKey];
    self.danish = [aDecoder decodeDoubleForKey:kICDanishKey];
    self.chinese = [aDecoder decodeDoubleForKey:kICChineseKey];
    self.french = [aDecoder decodeDoubleForKey:kICFrenchKey];
    self.finnish = [aDecoder decodeDoubleForKey:kICFinnishKey];
    self.english = [aDecoder decodeDoubleForKey:kICEnglishKey];
    self.esperanto = [aDecoder decodeDoubleForKey:kICEsperantoKey];
    self.persianFarsi = [aDecoder decodeDoubleForKey:kICPersianFarsiKey];
    self.tagalog = [aDecoder decodeDoubleForKey:kICTagalogKey];
    self.portuguese = [aDecoder decodeDoubleForKey:kICPortugueseKey];
    self.thai = [aDecoder decodeDoubleForKey:kICThaiKey];
    self.italian = [aDecoder decodeDoubleForKey:kICItalianKey];
    self.romanian = [aDecoder decodeDoubleForKey:kICRomanianKey];
    self.indonesian = [aDecoder decodeDoubleForKey:kICIndonesianKey];
    self.latin = [aDecoder decodeDoubleForKey:kICLatinKey];
    self.greek = [aDecoder decodeDoubleForKey:kICGreekKey];
    self.czech = [aDecoder decodeDoubleForKey:kICCzechKey];
    self.german = [aDecoder decodeDoubleForKey:kICGermanKey];
    self.polish = [aDecoder decodeDoubleForKey:kICPolishKey];
    self.lithuanian = [aDecoder decodeDoubleForKey:kICLithuanianKey];
    self.norwegian = [aDecoder decodeDoubleForKey:kICNorwegianKey];
    self.japanese = [aDecoder decodeDoubleForKey:kICJapaneseKey];
    self.arabic = [aDecoder decodeDoubleForKey:kICArabicKey];
    self.swedish = [aDecoder decodeDoubleForKey:kICSwedishKey];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [super encodeWithCoder:aCoder];
    
    [aCoder encodeDouble:_vietnamese forKey:kICVietnameseKey];
    [aCoder encodeDouble:_turkish forKey:kICTurkishKey];
    [aCoder encodeDouble:_russian forKey:kICRussianKey];
    [aCoder encodeDouble:_spanish forKey:kICSpanishKey];
    [aCoder encodeDouble:_dutch forKey:kICDutchKey];
    [aCoder encodeDouble:_hebrew forKey:kICHebrewKey];
    [aCoder encodeDouble:_bulgarian forKey:kICBulgarianKey];
    [aCoder encodeDouble:_hungarian forKey:kICHungarianKey];
    [aCoder encodeDouble:_slovak forKey:kICSlovakKey];
    [aCoder encodeDouble:_korean forKey:kICKoreanKey];
    [aCoder encodeDouble:_danish forKey:kICDanishKey];
    [aCoder encodeDouble:_chinese forKey:kICChineseKey];
    [aCoder encodeDouble:_french forKey:kICFrenchKey];
    [aCoder encodeDouble:_finnish forKey:kICFinnishKey];
    [aCoder encodeDouble:_english forKey:kICEnglishKey];
    [aCoder encodeDouble:_esperanto forKey:kICEsperantoKey];
    [aCoder encodeDouble:_persianFarsi forKey:kICPersianFarsiKey];
    [aCoder encodeDouble:_tagalog forKey:kICTagalogKey];
    [aCoder encodeDouble:_portuguese forKey:kICPortugueseKey];
    [aCoder encodeDouble:_thai forKey:kICThaiKey];
    [aCoder encodeDouble:_italian forKey:kICItalianKey];
    [aCoder encodeDouble:_romanian forKey:kICRomanianKey];
    [aCoder encodeDouble:_indonesian forKey:kICIndonesianKey];
    [aCoder encodeDouble:_latin forKey:kICLatinKey];
    [aCoder encodeDouble:_greek forKey:kICGreekKey];
    [aCoder encodeDouble:_czech forKey:kICCzechKey];
    [aCoder encodeDouble:_german forKey:kICGermanKey];
    [aCoder encodeDouble:_polish forKey:kICPolishKey];
    [aCoder encodeDouble:_lithuanian forKey:kICLithuanianKey];
    [aCoder encodeDouble:_norwegian forKey:kICNorwegianKey];
    [aCoder encodeDouble:_japanese forKey:kICJapaneseKey];
    [aCoder encodeDouble:_arabic forKey:kICArabicKey];
    [aCoder encodeDouble:_swedish forKey:kICSwedishKey];
}

- (id)copyWithZone:(NSZone *)zone
{
    __typeof__(self) copy = [super copyWithZone:zone];
    
    if (copy) {

        copy.vietnamese = self.vietnamese;
        copy.turkish = self.turkish;
        copy.russian = self.russian;
        copy.spanish = self.spanish;
        copy.dutch = self.dutch;
        copy.hebrew = self.hebrew;
        copy.bulgarian = self.bulgarian;
        copy.hungarian = self.hungarian;
        copy.slovak = self.slovak;
        copy.korean = self.korean;
        copy.danish = self.danish;
        copy.chinese = self.chinese;
        copy.french = self.french;
        copy.finnish = self.finnish;
        copy.english = self.english;
        copy.esperanto = self.esperanto;
        copy.persianFarsi = self.persianFarsi;
        copy.tagalog = self.tagalog;
        copy.portuguese = self.portuguese;
        copy.thai = self.thai;
        copy.italian = self.italian;
        copy.romanian = self.romanian;
        copy.indonesian = self.indonesian;
        copy.latin = self.latin;
        copy.greek = self.greek;
        copy.czech = self.czech;
        copy.german = self.german;
        copy.polish = self.polish;
        copy.lithuanian = self.lithuanian;
        copy.norwegian = self.norwegian;
        copy.japanese = self.japanese;
        copy.arabic = self.arabic;
        copy.swedish = self.swedish;
    }
    
    return copy;
}


@end
