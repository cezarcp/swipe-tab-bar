# SwipeTabBarController

A simple adition to `UITabBarController` which allows changing tabs with left and right swipe gestures on the tab bar.

#Why?

If you've used an iOS app with 5+ tabs on a iPhone 6+, you know that depending on your grip, it may be hard to reach the first/last tab icons.

#Implementation

I've provided two versions"

##Objective-C 
A simple `UITabBarController` subclass, which adds two gesture recognizers to its `UITabBar` to handle left and right swipes.

##Swift
Swift's version uses an extension instead of a subclass. The gesture recognizers are setup by calling a method on the `UITabBarController`

#Usage

##Objective-C

Include both `SwipeTabBarController.h` and `SwipeTabBarController.m` in your project. Use SwipeTabBarController in place of UITabBarController, and done.
You can also set the `cyclesThroughViewControllers` to alter the bahvior when swiping past the last/first tab. Defaults to `NO`

##Swift

Include `TabBarControllerSwipeExtension.swift` in your project. Inside `application:DidFinishLauncingWithOptions:` setup the gesture recognizer as follows:

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let tabBarController = self.window?.rootViewController as? UITabBarController
        tabBarController?.setupSwipeGestureRecognizers()
        
        return true
    }

To activate the behavior of cycling through tabs, use:

        tabBarController?.setupSwipeGestureRecognizers(cycleThroughTabs: true)
