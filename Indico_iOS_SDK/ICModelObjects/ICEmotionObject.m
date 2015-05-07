//
//  ICEmotionObject.m
//
//  Created by Indico  on 15/10/14
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "ICEmotionObject.h"

@implementation ICEmotionObject

@synthesize sad = _sad;
@synthesize happy = _happy;
@synthesize angry = _angry;
@synthesize neutral = _neutral;
@synthesize surprise = _surprise;
@synthesize fear = _fear;


- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super initWithDictionary:dict];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]])
    {
        self.sad = [[dict objectOrNilForKey:kICSadKey] doubleValue];
        self.happy = [[dict objectOrNilForKey:kICHappyKey] doubleValue];
        self.angry = [[dict objectOrNilForKey:kICAngryKey] doubleValue];
        self.neutral = [[dict objectOrNilForKey:kICNeutralKey] doubleValue];
        self.surprise = [[dict objectOrNilForKey:kICSurpriseKey] doubleValue];
        self.fear = [[dict objectOrNilForKey:kICFearKey] doubleValue];
    }
    
    return self;
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionaryWithDictionary:[super dictionaryRepresentation]];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sad] forKey:kICSadKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.happy] forKey:kICHappyKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.angry] forKey:kICAngryKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.neutral] forKey:kICNeutralKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.surprise] forKey:kICSurpriseKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.fear] forKey:kICFearKey];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];

    self.sad = [aDecoder decodeDoubleForKey:kICSadKey];
    self.happy = [aDecoder decodeDoubleForKey:kICHappyKey];
    self.angry = [aDecoder decodeDoubleForKey:kICAngryKey];
    self.neutral = [aDecoder decodeDoubleForKey:kICNeutralKey];
    self.surprise = [aDecoder decodeDoubleForKey:kICSurpriseKey];
    self.fear = [aDecoder decodeDoubleForKey:kICFearKey];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [super encodeWithCoder:aCoder];
    
    [aCoder encodeDouble:_sad forKey:kICSadKey];
    [aCoder encodeDouble:_happy forKey:kICHappyKey];
    [aCoder encodeDouble:_angry forKey:kICAngryKey];
    [aCoder encodeDouble:_neutral forKey:kICNeutralKey];
    [aCoder encodeDouble:_surprise forKey:kICSurpriseKey];
    [aCoder encodeDouble:_fear forKey:kICFearKey];
}

- (id)copyWithZone:(NSZone *)zone
{
    __typeof__(self) copy = [super copyWithZone:zone];
    
    if (copy) {

        copy.sad = self.sad;
        copy.happy = self.happy;
        copy.angry = self.angry;
        copy.neutral = self.neutral;
        copy.surprise = self.surprise;
        copy.fear = self.fear;
    }
    
    return copy;
}


@end
