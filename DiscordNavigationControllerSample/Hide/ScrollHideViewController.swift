//
//  ScrollHideViewController.swift
//  DiscordNavigationControllerSample
//
//  Created by Yamada Shunya on 2019/09/02.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class ScrollHideViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Hide on scroll"
        
        // ステータスバーの背景色をNavigationBarの背景色と合わせる
        let statusBar = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIApplication.shared.statusBarFrame.height))
        statusBar.backgroundColor = .white
        view.addSubview(statusBar)
        
        scrollView.delegate = self
    }
}

// MARK: - ScrollView delegate

extension ScrollHideViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.panGestureRecognizer.translation(in: scrollView.superview).y > 0 {
            // Swipe up
            navigationController?.setNavigationBarHidden(true, animated: true)
        } else {
            // Swipe down
            navigationController?.setNavigationBarHidden(false, animated: true)
        }
    }
}
