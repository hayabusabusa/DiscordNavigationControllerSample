//
//  VCInitTabBarController.swift
//  DiscordNavigationControllerSample
//
//  Created by Yamada Shunya on 2019/08/21.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class VCInitTabBarController: UITabBarController {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Init viewControllers
        
        // From code
        let codeVC = CodeViewController("Title")//CodeViewController(nibName: nil, bundle: nil)
        codeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        
        // From storyboard
        //let storyboardVC = StoryboardViewController(nibName: nil, bundle: nil)
        guard let storyboardVC = UIStoryboard(name: "StoryboardViewController", bundle: nil)
            .instantiateInitialViewController() as? StoryboardViewController else {
            return
        }
        storyboardVC.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 1)
        
        setViewControllers([codeVC, storyboardVC], animated: false)
        
        // Navigation
        navigationItem.title = "Sample"
    }
}
