//
//  ICPoliticalObject.h
//
//  Created by Indico  on 15/10/14
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICBaseModelObject.h"

@interface ICPoliticalObject : ICBaseModelObject <NSCoding, NSCopying>

@property (nonatomic, assign) double liberal;
@property (nonatomic, assign) double green;
@property (nonatomic, assign) double conservative;
@property (nonatomic, assign) double libertarian;

@end
