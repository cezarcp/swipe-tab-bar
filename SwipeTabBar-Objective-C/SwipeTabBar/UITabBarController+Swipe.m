//
//  UITabBarController+Swipe.m
//  SwipeTabBar
//
//  Created by Cezar Carvalho Pereira on 23/1/15.
//  Copyright (c) 2015 Wavebits. All rights reserved.
//

#import "UITabBarController+Swipe.h"

@implementation UITabBarController (Swipe)

- (void)setupSwipeGestureRecognizersAllowCyclingThroughTabs:(BOOL)allowsCycling {
 
    SEL swipeLeftAction = allowsCycling ? @selector(handleSwipeLeftWithCycling:) : @selector(handleSwipeLeft:);
    UISwipeGestureRecognizer *leftSwipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:swipeLeftAction];
    leftSwipeGestureRecognizer.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.tabBar addGestureRecognizer:leftSwipeGestureRecognizer];
    
    SEL swipeRightAction = allowsCycling ? @selector(handleSwipeRightWithCycling:) : @selector(handleSwipeRight:);
    UISwipeGestureRecognizer *rightSwipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:swipeRightAction];
    rightSwipeGestureRecognizer.direction = UISwipeGestureRecognizerDirectionRight;
    [self.tabBar addGestureRecognizer:rightSwipeGestureRecognizer];
}

- (void)handleSwipeLeft:(UISwipeGestureRecognizer *)swipe {
    self.selectedIndex -= 1;
}

- (void)handleSwipeRight:(UISwipeGestureRecognizer *)swipe {
    self.selectedIndex += 1;
}

- (void)handleSwipeLeftWithCycling:(UISwipeGestureRecognizer *)swipe {
    NSInteger nextIndex = self.selectedIndex - 1;
    self.selectedIndex = nextIndex >= 0 ? nextIndex : self.viewControllers.count - 1;
}

- (void)handleSwipeRightWithCycling:(UISwipeGestureRecognizer *)swipe {
    NSInteger nextIndex = self.selectedIndex + 1;
    self.selectedIndex = nextIndex < self.viewControllers.count ? nextIndex : 0;
}


@end
