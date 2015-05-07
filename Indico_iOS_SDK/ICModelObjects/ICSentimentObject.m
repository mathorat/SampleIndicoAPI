//
//  ICSentimentObject.m
//
//  Created by Indico  on 15/10/14
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "ICSentimentObject.h"

@implementation ICSentimentObject

@synthesize results = _results;

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super initWithDictionary:dict];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]])
    {
        self.results = [[dict objectOrNilForKey:kICResultsKey] doubleValue];
    }
    
    return self;
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionaryWithDictionary:[super dictionaryRepresentation]];
    [mutableDict setValue:[NSNumber numberWithDouble:self.results] forKey:kICResultsKey];
    return mutableDict;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];

    self.results = [aDecoder decodeDoubleForKey:kICResultsKey];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [super encodeWithCoder:aCoder];

    [aCoder encodeDouble:_results forKey:kICResultsKey];
}

- (id)copyWithZone:(NSZone *)zone
{
    __typeof__(self) copy = [super copyWithZone:zone];
    
    if (copy)
    {
        copy.results = self.results;
    }
    
    return copy;
}


@end
