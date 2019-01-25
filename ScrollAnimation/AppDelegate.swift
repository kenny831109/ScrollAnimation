//
//  AppDelegate.swift
//  ScrollAnimation
//
//  Created by 逸唐陳 on 2019/1/25.
//  Copyright © 2019 逸唐陳. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let vc = ViewController()
        let NavgationController = UINavigationController(rootViewController: vc)
        window?.rootViewController = NavgationController
        window?.makeKeyAndVisible()
        return true
    }

}

extension UIApplication {
    
    var statusBarView: UIView? {
        return value(forKey: "statusBar") as? UIView
    }
    
}

