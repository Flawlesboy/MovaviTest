//
//  AppDelegate.swift
//  TestMovavi
//
//  Created by Загид Гусейнов on 11.12.2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow()
        self.window?.rootViewController = NewsAssembly().view()
        self.window?.makeKeyAndVisible()
        
        return true
    }

}

