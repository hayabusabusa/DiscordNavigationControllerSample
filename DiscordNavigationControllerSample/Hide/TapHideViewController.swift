//
//  TapHideViewController.swift
//  DiscordNavigationControllerSample
//
//  Created by Yamada Shunya on 2019/08/21.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//
//  Stackoverflow
//  https://stackoverflow.com/questions/26273672/how-to-hide-status-bar-and-navigation-bar-when-tap-device/26281329
//

import UIKit

final class TapHieViewController: UIViewController {
    
    // MARK: - Properties
    
    private var statusBarHide: Bool = false
    
    override var prefersStatusBarHidden: Bool {
        if !statusBarHide {
            return false
        }
        return navigationController?.isNavigationBarHidden == true
    }

    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Hide on tap"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Navigation
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Navigation
        navigationController?.hidesBarsOnTap = false
    }
    
    // MARK: - IBAction
    
    @IBAction func onValueChanged(_ sender: UISwitch) {
        statusBarHide = sender.isOn
    }
}

// MARK: - Touches

extension TapHieViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan")
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesEnded")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesMoved")
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesCancelled")
    }
}
