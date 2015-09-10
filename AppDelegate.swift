//
//  AppDelegate.swift
//  Tinder
//
//  Created by Todd Halkowski
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    /* Changed
    
    application(application: UIApplication!, didFinishLaunchingWithOptions launchOptions: NSDictionary!) -> Bool {
    
    to
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
    
    */
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        
        
        Parse.setApplicationId("cSAUhbTijy2xd87RpvFyUEhSIbB524GJGNmj7q6E", clientKey: "e4D3biJLkcjWdVYEHH3aJFf0ftLF66okDhfgt6UJ")
        
        PFFacebookUtils.initializeFacebook()
        
        return true
    }
    
    // Changed UIApplication! to UIApplication
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    // Changed UIApplication! to UIApplication
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    // Changed UIApplication! to UIApplication
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    // Changed UIApplication! to UIApplication
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    /*  Changed
    
    func application(application: UIApplication, openURL url: NSURL,
    sourceApplication: NSString, annotation: AnyObject) -> Bool {
    
    to
    
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject?) -> Bool {
    
    */
    
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject?) -> Bool {
        
        return FBAppCall.handleOpenURL(url, sourceApplication:sourceApplication,
            withSession:PFFacebookUtils.session())
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        
        FBAppCall.handleDidBecomeActiveWithSession(PFFacebookUtils.session())
        
    }
    
    
    
}

