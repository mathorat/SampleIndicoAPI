//
//  ICPoliticalObject.m
//
//  Created by Indico  on 15/10/14
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "ICPoliticalObject.h"

@implementation ICPoliticalObject

@synthesize liberal = _liberal;
@synthesize green = _green;
@synthesize conservative = _conservative;
@synthesize libertarian = _libertarian;


- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super initWithDictionary:dict];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]])
    {
        self.liberal = [[dict objectOrNilForKey:kICLiberalKey] doubleValue];
        self.green = [[dict objectOrNilForKey:kICGreenKey] doubleValue];
        self.conservative = [[dict objectOrNilForKey:kICConservativeKey] doubleValue];
        self.libertarian = [[dict objectOrNilForKey:kICLibertarianKey] doubleValue];
    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionaryWithDictionary:[super dictionaryRepresentation]];
    [mutableDict setValue:[NSNumber numberWithDouble:self.liberal] forKey:kICLiberalKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.green] forKey:kICGreenKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.conservative] forKey:kICConservativeKey];
    [mutableDict setValue:[NSNumber numberWithDouble:self.libertarian] forKey:kICLibertarianKey];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    self.liberal = [aDecoder decodeDoubleForKey:kICLiberalKey];
    self.green = [aDecoder decodeDoubleForKey:kICGreenKey];
    self.conservative = [aDecoder decodeDoubleForKey:kICConservativeKey];
    self.libertarian = [aDecoder decodeDoubleForKey:kICLibertarianKey];
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [super encodeWithCoder:aCoder];
    
    [aCoder encodeDouble:_liberal forKey:kICLiberalKey];
    [aCoder encodeDouble:_green forKey:kICGreenKey];
    [aCoder encodeDouble:_conservative forKey:kICConservativeKey];
    [aCoder encodeDouble:_libertarian forKey:kICLibertarianKey];
}

- (id)copyWithZone:(NSZone *)zone
{
    __typeof__(self) copy = [super copyWithZone:zone];
    
    if (copy)
    {
        copy.liberal = self.liberal;
        copy.green = self.green;
        copy.conservative = self.conservative;
        copy.libertarian = self.libertarian;
    }
    
    return copy;
}

@end
