//
//  AppDelegate.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 11.01.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow(frame: UIScreen.mainScreen().bounds)

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let tabBarController = UITabBarController()

        let mainViewController = MainViewController()
        mainViewController.title = "Simple"
        let mainWithAnchorsViewController = MainWithAnchorsViewController()
        mainWithAnchorsViewController.title = "Anchors"
        let mainVisualViewController = MainVisualViewController()
        mainVisualViewController.title = "Visual"
        let mainStackViewController = MainStackViewController()
        mainStackViewController.title = "Stacks"
        let mainStackButtonsViewController = MainStackButtonsViewController()
        mainStackButtonsViewController.title = "Buttons"
        tabBarController.viewControllers = [
            UINavigationController(rootViewController: mainViewController),
            UINavigationController(rootViewController: mainWithAnchorsViewController),
            UINavigationController(rootViewController: mainVisualViewController),
            UINavigationController(rootViewController: mainStackViewController),
            UINavigationController(rootViewController: mainStackButtonsViewController)
        ]
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()

        return true
    }

}

