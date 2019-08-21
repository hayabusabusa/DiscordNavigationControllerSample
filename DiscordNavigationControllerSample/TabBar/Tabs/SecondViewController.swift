//
//  SecondViewController.swift
//  DiscordNavigationControllerSample
//
//  Created by Yamada Shunya on 2019/08/05.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class SecondViewController: UIViewController {
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Navigation Bar
        self.navigationItem.title = "Second"
    }
    
    // MARK: IBAction
    
    @IBAction func tapButton(_ sender: Any) {
        guard let detail = UIStoryboard(name: "DetailViewController", bundle: nil).instantiateInitialViewController() else {
            return
        }
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
