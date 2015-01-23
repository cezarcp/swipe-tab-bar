//
//  UITabBarController+Swipe.h
//  SwipeTabBar
//
//  Created by Cezar Carvalho Pereira on 23/1/15.
//  Copyright (c) 2015 Wavebits. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBarController (Swipe)

- (void)setupSwipeGestureRecognizersAllowCyclingThroughTabs:(BOOL)allowsCycling;

@end
