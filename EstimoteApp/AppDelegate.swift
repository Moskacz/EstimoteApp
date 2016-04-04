//
//  AppDelegate.swift
//  EstimoteApp
//
//  Created by Michał Moskała on 04.04.2016.
//  Copyright © 2016 Michal Moskala. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let beaconManager = ESTBeaconManager()


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        beaconManager.delegate = self
        beaconManager.requestAlwaysAuthorization()
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {}
    func applicationDidEnterBackground(application: UIApplication) {}
    func applicationWillEnterForeground(application: UIApplication) {}
    func applicationDidBecomeActive(application: UIApplication) {}
    func applicationWillTerminate(application: UIApplication) {}
}

extension AppDelegate: ESTBeaconManagerDelegate {
    
}