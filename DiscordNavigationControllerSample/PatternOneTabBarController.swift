//
//  PatternOneTabBarController.swift
//  DiscordNavigationControllerSample
//
//  Created by Yamada Shunya on 2019/08/05.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class PatternOneTabBarController: UITabBarController {
    
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
        
        first.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        second.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        self.setViewControllers([first, second], animated: false)
    }
    
    // MARK: Tap event
    
    @objc func tapDone(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
}
