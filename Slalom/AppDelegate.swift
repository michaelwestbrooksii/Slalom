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
        
        //  MARK:- Ignore storyboard
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible() //  <- Make key visible
        
        //  MARK:- Create a new variable that will handle the construction of the new view collection view controller
        let homeController = HomeController(collectionViewLayout: UICollectionViewFlowLayout())
        
        //  MARK:- Initialize the view controller
        window?.rootViewController = UINavigationController(rootViewController: homeController)
        
        return true
    }

    

}

