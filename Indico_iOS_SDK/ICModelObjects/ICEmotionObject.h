//
//  ICEmotionObject.h
//
//  Created by Indico  on 15/10/14
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICBaseModelObject.h"

@interface ICEmotionObject : ICBaseModelObject <NSCoding, NSCopying>

@property (nonatomic, assign) double sad;
@property (nonatomic, assign) double happy;
@property (nonatomic, assign) double angry;
@property (nonatomic, assign) double neutral;
@property (nonatomic, assign) double surprise;
@property (nonatomic, assign) double fear;

@end
