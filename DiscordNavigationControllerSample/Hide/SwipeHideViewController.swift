//
//  SwipeHideViewController.swift
//  DiscordNavigationControllerSample
//
//  Created by Yamada Shunya on 2019/08/21.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class SwipeHideViewController: UIViewController {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Hide on Swipe up"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Navigation
        navigationController?.hidesBarsOnSwipe = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Navigation
        navigationController?.hidesBarsOnSwipe = false
    }
}
