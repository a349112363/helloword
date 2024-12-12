//
//  Application.swift
//  WallPaper
//
//  Created by LiQi on 2020/4/9.
//  Copyright © 2020 Qire. All rights reserved.
//

import UIKit


enum ApplicationChildCoordinator {
    case tab
    case guide
    case login
    case oauthLogin
    case wallpaper
}

final class Application: NSObject {
    
    static let shared = Application()
    
    //    var tabBarController: TabBarController?
    var window: UIWindow!
    //    private var coordinators = [ApplicationChildCoordinator:Coordinator?]
    
    func configureMainInterface(in window: UIWindow) {
        self.window = window
        showLaunch()
    }
    
    private func showLaunch() {
        let launch = ViewController()
        window.rootViewController = launch
    }
    
    
}




