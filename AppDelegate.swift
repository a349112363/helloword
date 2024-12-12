//
//  AppDelegate.swift
//  swift
//
//  Created by 7x on 2023/12/7.
//

import UIKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = .white
        self.window = window
        Application.shared.configureMainInterface(in: window)
        self.window?.makeKeyAndVisible()

        // 常亮
        UIApplication.shared.isIdleTimerDisabled = true
        
        
        return true
    }
    
}

