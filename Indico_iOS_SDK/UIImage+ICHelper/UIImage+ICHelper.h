//
//  UIImage+ICHelper.h
//  Indico iOS Demo
//
//  Created by Indico on 15/10/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ICHelper)

- (NSArray*)IC_API_GrayScaleValues;

- (NSArray*)IC_API_RGBScaleValues;

- (UIImage *)IC_API_resizeToSize:(CGSize)newSize;

@end

