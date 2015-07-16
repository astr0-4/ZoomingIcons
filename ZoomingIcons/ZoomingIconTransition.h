//
//  ZoomingIconTransition.h
//  ZoomingIcons
//
//  Created by Alex on 2015-07-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;


@interface ZoomingIconTransition : NSObject<UIViewControllerAnimatedTransitioning, UINavigationControllerDelegate>

extern NSTimeInterval const kZoomingIconTransitionDuration;

@end
