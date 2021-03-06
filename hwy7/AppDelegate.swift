//
//  AppDelegate.swift
//  hwy7
//
//  Created by Cindy Zhao on 2015-11-19.
//  Copyright © 2015 Cindy Zhao. All rights reserved.
//

import UIKit
import Parse

var numQueue = [ "1","2","3","4","5","6","7","8","9","10"]
var customersQList = [CustomersQ]()

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        //Connect to Parse.com
        //local Datastore
        Parse.enableLocalDatastore()
        //initialize Parse
        Parse.setApplicationId("BSfAw7RJoeHvQdSKv41Yv6PWKApsxKqfKGN8ecNy",
            clientKey: "2FxRkyF0dCmfEghPIdR6BmNPvroj5c05tuLoQ1ek")
        
        //init customersQList
        for queue in numQueue {
            let customerQ = CustomersQ(name_: queue)
            customersQList.append(customerQ)
        }
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

