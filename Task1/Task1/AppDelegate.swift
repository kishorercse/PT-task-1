//
//  AppDelegate.swift
//  Task1
//
//  Created by kishore-pt5557 on 29/07/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let navController = UINavigationController(rootViewController: ViewController())
        navController.setNavigationBarHidden(true, animated: true)
        window?.rootViewController = navController
        return true
    }


}

