# SwipeTabBarController

A simple `UITabBarController` which allows changing tabs with left and right swipe gestures on the tab bar.

#Why?

If you've used an iOS app with 5+ tabs on a iPhone 6+, you know that depending on your grip, it may be hard to reach the first/last tab icons.

This simples subclass adds  swipe gesture recognition to the `UITabBarController`.

#Usage

Include both `SwipeTabBarController.h` and `SwipeTabBarController.m` in your project. Use SwipeTabBarController in place of UITabBarController, and done.
You can also set the `cyclesThroughViewControllers` to alter the bahvior when swiping past the last/first tab. Defaults to `NO`
