//
//  AppDelegate.swift
//  iOSRollBar
//
//  Created by Lu on 3/7/17.
//  Copyright © 2017 Snap!Raise. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    
    let config:RollbarConfiguration = RollbarConfiguration()
    config.crashLevel = "critical"
    config.environment = "production"
    
    Rollbar.initWithAccessToken("CODE GOES HERE", configuration: config)
    
    return true
  }


}

