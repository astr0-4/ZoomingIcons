//
//  ZoomingIconTransition.m
//  ZoomingIcons
//
//  Created by Alex on 2015-07-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "ZoomingIconTransition.h"



@implementation ZoomingIconTransition

NSTimeInterval const kZoomingIconTransitionDuration = 1;

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return kZoomingIconTransitionDuration;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
   
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *containerView = [transitionContext containerView];
   // containerView.backgroundColor = [UIColor whiteColor];
    [containerView addSubview:fromViewController.view];
    [containerView addSubview:toViewController.view];
    toViewController.view.alpha = 0;
   
    [UIView animateWithDuration:1.0 animations:^{
        toViewController.view.alpha = 1.0;

    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];

    
}

-(id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC {
    return self;
}


@end
