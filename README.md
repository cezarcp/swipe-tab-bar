# SwipeTabBarController

A simple adition to `UITabBarController` which allows changing tabs with left and right swipe gestures on the tab bar.

#Why?

If you've used an iOS app with 5+ tabs on a iPhone 6+, you know that depending on your grip, it may be hard to reach the first/last tab icons.

#Implementation

I've provided two versions, one in Objective-C and the other in Swift. They use a Category and an Extension respectively.

Both add two `UISwipeGestureRecognizers` to the `UITabBar` and provides methods for handling swipes in each direction, with or without cycling behavior (going from the last to the first tab when swiping right and from the first to the last tab when swiping left)

#Usage

##Objective-C

Include `UITabBarController+Swipe.h` in your project and import it in the `AppDelegate` implementation. Setup the `UITabBarController` with:

    - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
        UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
        [tabBarController setupSwipeGestureRecognizersAllowCyclingThroughTabs:NO];
        
        return YES;
    }
To activate the cycling behavior, use:

    [tabBarController setupSwipeGestureRecognizersAllowCyclingThroughTabs:YES];

##Swift

Include `TabBarControllerSwipeExtension.swift` in your project. Inside `application:DidFinishLauncingWithOptions:` setup the gesture recognizer as follows:

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let tabBarController = self.window?.rootViewController as? UITabBarController
        tabBarController?.setupSwipeGestureRecognizers()
        
        return true
    }

To activate the behavior of cycling through tabs, use:

        tabBarController?.setupSwipeGestureRecognizers(cycleThroughTabs: true)
