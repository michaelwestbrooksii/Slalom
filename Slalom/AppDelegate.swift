//
//  AppDelegate.swift
//  Slalom
//
//  Created by Michael Westbrooks II on 5/25/17.
//  Copyright © 2017 RedRooster Technologies Inc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //  MARK:- Ignore storyboard and programatically set an initial view controller.
        //  MARK:- Step 1: Setup the window and make it the "key" window.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        //  MARK:- Create a new view controller the will subclass the UICollection view controller.
        //  let homeController = HomeController(collectionViewLayout: UICollectionViewFlowLayout())
        let homeController = LearnChainController(collectionViewLayout: UICollectionViewFlowLayout())
        
        
        //  MARK:- Initialize the view controller and set it as the root view controller for the window.
        window?.rootViewController = UINavigationController(rootViewController: homeController)
        
        return true
    }

    

}

