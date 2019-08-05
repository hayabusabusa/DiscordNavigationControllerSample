//
//  PatternTwoTabBarController.swift
//  DiscordNavigationControllerSample
//
//  Created by Yamada Shunya on 2019/08/05.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class PatternTwoTabBarController: UITabBarController {
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Navigation Bar
        self.navigationItem.title = "TabBar"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(tapDone(_:)))
        
        // TabBarController ViewControllers
        guard let first = UIStoryboard(name: "FirstViewController", bundle: nil).instantiateInitialViewController(),
            let second = UIStoryboard(name: "SecondViewController", bundle: nil).instantiateInitialViewController() else {
                return
        }
        
        let firstNavgationController = UINavigationController(rootViewController: first)
        firstNavgationController.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        let secondNavigationController = UINavigationController(rootViewController: second)
        secondNavigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        self.setViewControllers([firstNavgationController, secondNavigationController], animated: false)
    }
    
    // MARK: Tap event
    
    @objc func tapDone(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
}
