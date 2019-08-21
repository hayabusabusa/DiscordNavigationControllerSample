//
//  TransitionHideViewController.swift
//  DiscordNavigationControllerSample
//
//  Created by Yamada Shunya on 2019/08/21.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class TransitionHideViewController: UIViewController {
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Navigation
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Navigation
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    // MARK: IBAction
    
    @IBAction func tapBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
