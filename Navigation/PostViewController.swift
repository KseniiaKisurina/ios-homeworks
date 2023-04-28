//
//  PostViewController.swift
//  Navigation
//
//  Created by Сергей on 28.04.2023.
//

import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        
    
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
     
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(barButtonAction))
        navigationItem.setRightBarButton(barButtonItem, animated: false)
    }
    @objc func barButtonAction() {
       let infoViewController = InfoViewController()
        present(infoViewController, animated: true)
    }
        
}
