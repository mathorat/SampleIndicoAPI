//
//  ICBaseModelObject.h
//  Indico iOS Demo
//
//  Created by Indico on 15/10/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IndicoAPIConstants.h"

@interface ICBaseModelObject : NSObject <NSCoding, NSCopying>

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end


#pragma mark - Helper Method
@interface NSDictionary (ObjectOrNil)

- (id)objectOrNilForKey:(id)aKey;

@end