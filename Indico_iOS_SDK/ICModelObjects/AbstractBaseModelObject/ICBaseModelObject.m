//
//  ICBaseModelObject.m
//  Indico iOS Demo
//
//  Created by Indico on 15/10/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import "ICBaseModelObject.h"

@implementation ICBaseModelObject

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    return self;
}

#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
}

- (id)copyWithZone:(NSZone *)zone
{
    __typeof__(self) copy = [[[self class] alloc] init];
    
    return copy;
}

- (NSDictionary *)dictionaryRepresentation
{
    return [NSDictionary dictionary];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}


@end


#pragma mark - Helper Method
@implementation NSDictionary (ObjectOrNil)

- (id)objectOrNilForKey:(id)aKey
{
    id object = [self objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}

@end