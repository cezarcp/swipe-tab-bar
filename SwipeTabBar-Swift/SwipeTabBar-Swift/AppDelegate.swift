//
//  AppDelegate.swift
//  SwipeTabBar-Swift
//
//  Created by Cezar Carvalho Pereira on 23/1/15.
//  Copyright (c) 2015 Wavebits. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let tabBarController = self.window?.rootViewController as? UITabBarController
        tabBarController?.setupSwipeGestureRecognizers(allowCyclingThoughTabs: true)
        
        return true
    }
}

