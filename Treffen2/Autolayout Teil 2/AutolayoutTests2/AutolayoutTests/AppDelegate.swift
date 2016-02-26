//
//  AppDelegate.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 11.01.16.
//  Copyright © 2016 My - Markus Schmitt. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow(frame: UIScreen.mainScreen().bounds)

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let nav = UINavigationController()
        let mainView = UIViewController(nibName: nil, bundle: nil)
        nav.viewControllers = [mainView]
        nav.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        UINavigationBar.appearance().barTintColor = UIColor.redColor()
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        
        //White status font
        UINavigationBar.appearance().barStyle = UIBarStyle.BlackTranslucent

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
        let objectLibraryViewController = ObjectLibraryViewController()
        objectLibraryViewController.title = "OL"
        let kontakteViewController = KontakteViewController()
        kontakteViewController.title = "Kontakte"
        let scrollView = ScrollViewController()
        scrollView.title = "ScrollView"

        tabBarController.viewControllers = [
            UINavigationController(rootViewController: objectLibraryViewController),
            UINavigationController(rootViewController: kontakteViewController),
            UINavigationController(rootViewController: scrollView),
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

