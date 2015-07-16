//
//  SocailItemClass.m
//  ZoomingIcons
//
//  Created by Alex on 2015-07-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "SocialItem.h"

@implementation SocialItem

- (instancetype)initWithImage:(UIImage *)image :(UIColor *)color name:(NSString*)name summary:(NSString *)summary
{
    self = [super init];
    if (self) {
        _image = image;
        _color = color;
        _name = name;
        _summary = summary;
    }
    return self;
}


@end
