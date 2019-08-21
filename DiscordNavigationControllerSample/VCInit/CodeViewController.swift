//
//  CodeViewController.swift
//  DiscordNavigationControllerSample
//
//  Created by Yamada Shunya on 2019/08/21.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

final class CodeViewController: UIViewController {
    
    // MARK: - UI
    
    private var buttonTitle: String = ""
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.text = "Init from code :)"
        return label
    }()
    
    lazy var descLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.lightGray
        label.text = "This layout was built in code."
        return label
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.titleLabel?.textColor = UIColor.white
        button.backgroundColor = UIColor.blue
        button.layer.cornerRadius = 4.0
        return button
    }()
    
    // MARK: - Lifecycle
    
    init(_ buttonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UI
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        view.addSubview(descLabel)
        view.addSubview(button)
        button.setTitle(buttonTitle, for: .normal)
        setupLayout()
    }
}

// MARK: - AutoLayout

extension CodeViewController {
    
    func setupLayout() {
        // titleLabel
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
            ])
        
        // descLabel
        NSLayoutConstraint.activate([
            descLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            descLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor, constant: 0)
            ])
        
        // button
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: descLabel.bottomAnchor, constant: 16),
            button.centerXAnchor.constraint(equalTo: descLabel.centerXAnchor, constant: 0),
            button.widthAnchor.constraint(equalToConstant: 88),
            button.heightAnchor.constraint(equalToConstant: 44)
            ])
    }
}
