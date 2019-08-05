//
//  TableViewController.swift
//  DiscordNavigationControllerSample
//
//  Created by Yamada Shunya on 2019/08/05.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class TableViewController: UITableViewController {
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: TableView delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch indexPath.section {
        case 0:
            if indexPath.row == 0 {
                guard let vc = UIStoryboard(name: "PatternOneTabBarController", bundle: nil).instantiateInitialViewController() else {
                    return
                }
                
                let next = UINavigationController(rootViewController: vc)
                self.present(next, animated: true, completion: nil)
            } else {
                guard let vc = UIStoryboard(name: "PatternTwoTabBarController", bundle: nil).instantiateInitialViewController() else {
                    return
                }
                
                self.present(vc, animated: true, completion: nil)
            }
        default:
            return
        }
    }
    
}
