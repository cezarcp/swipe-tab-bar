//
//  TabBarControllerSwipeExtension.swift
//  SwipeTabBar-Swift
//
//  Created by Cezar Carvalho Pereira on 23/1/15.
//  Copyright (c) 2015 Wavebits. All rights reserved.
//

import UIKit

extension UITabBarController {
    func setupSwipeGestureRecognizers(cycleThroughTabs: Bool = false) {
        let swipeLeftGestureRecognizer = UISwipeGestureRecognizer(target: self, action: cycleThroughTabs ? "handleSwipeLeftAllowingCyclingThroughTabs:"
                                                                                                         : "handleSwipeLeft:")
        swipeLeftGestureRecognizer.direction = .Left
        self.tabBar.addGestureRecognizer(swipeLeftGestureRecognizer)
        
        let swipeRightGestureRecognizer = UISwipeGestureRecognizer(target: self, action: cycleThroughTabs ? "handleSwipeRightAllowingCyclingThroughTabs:"
                                                                                                          : "handleSwipeRight:")
        swipeRightGestureRecognizer.direction = .Right
        self.tabBar.addGestureRecognizer(swipeRightGestureRecognizer)
    }
    
    func handleSwipeLeft(swipe: UISwipeGestureRecognizer) {
        self.selectedIndex -= 1
    }
    
    func handleSwipeRight(swipe: UISwipeGestureRecognizer) {
        self.selectedIndex += 1
    }
    
    func handleSwipeLeftAllowingCyclingThroughTabs(swipe: UISwipeGestureRecognizer) {
        let maxIndex = (self.viewControllers?.count ?? 0)
        let nextIndex = self.selectedIndex - 1
        self.selectedIndex = nextIndex >= 0 ? nextIndex : maxIndex - 1
        
    }
    
    func handleSwipeRightAllowingCyclingThroughTabs(swipe: UISwipeGestureRecognizer) {
        let maxIndex = (self.viewControllers?.count ?? 0)
        let nextIndex = self.selectedIndex + 1
        self.selectedIndex = nextIndex < maxIndex ? nextIndex : 0
    }
}
