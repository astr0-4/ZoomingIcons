//
//  CustomCell.h
//  ZoomingIcons
//
//  Created by Alex on 2015-07-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialItem.h"

@interface SocialItemCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIView *viewColor;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (instancetype)initWithSocialItem:(SocialItem *)socialItem;
@end
