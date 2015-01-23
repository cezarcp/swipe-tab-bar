//
//  SwipeTabBarController.m
//  SwipeTabBar
//
//  Created by Cezar Carvalho Pereira on 22/1/15.
//  Copyright (c) 2015 Wavebits. All rights reserved.
//

#import "SwipeTabBarController.h"

@implementation SwipeTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSwipeGestureRecognizers];
}

- (void)setupSwipeGestureRecognizers {

    UISwipeGestureRecognizer *leftSwipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeLeft:)];
    leftSwipeGestureRecognizer.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.tabBar addGestureRecognizer:leftSwipeGestureRecognizer];
    
    UISwipeGestureRecognizer *rightSwipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeRight:)];
    rightSwipeGestureRecognizer.direction = UISwipeGestureRecognizerDirectionRight;
    [self.tabBar addGestureRecognizer:rightSwipeGestureRecognizer];
}

- (void)handleSwipeLeft:(UISwipeGestureRecognizer *)swipe {
    [self selectPreviousViewController];
}

- (void)handleSwipeRight:(UISwipeGestureRecognizer *)swipe {
    [self selectNextViewController];
}

- (void)selectPreviousViewController {
    
    if (self.selectedIndex > 0) {
        self.selectedIndex -= 1;
    } else if (self.cyclesThroughTabs) {
        self.selectedIndex = self.viewControllers.count - 1;
    }
}

- (void)selectNextViewController {
    
    if (self.selectedIndex < self.viewControllers.count - 1) {
        self.selectedIndex += 1;
    } else if (self.cyclesThroughTabs) {
        self.selectedIndex = 0;
    }
}

@end
