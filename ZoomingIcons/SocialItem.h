//
//  SocailItemClass.h
//  ZoomingIcons
//
//  Created by Alex on 2015-07-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface SocialItem : NSObject

@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) UIColor *color;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *summary;

- (instancetype)initWithImage:(UIImage *)image :(UIColor *)color name:(NSString*)name summary:(NSString *)summary;

@end
