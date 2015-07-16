//
//  CustomCell.m
//  ZoomingIcons
//
//  Created by Alex on 2015-07-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "SocialItemCell.h"


@implementation SocialItemCell

- (instancetype)initWithSocialItem:(SocialItem *)socialItem
{
    self = [super init];
    if (self) {
        _imageView.image = socialItem.image;
        _viewColor.backgroundColor = socialItem.color;
    }
    return self;
}
-(void)layoutSubviews {
//self.view.cornerRadius = self.bounds.size.width/2;
self.layer.cornerRadius = self.frame.size.width/2;
self.layer.masksToBounds = YES;
    //[self setTranslatesAutoresizingMaskIntoConstraints:NO];
}

@end
