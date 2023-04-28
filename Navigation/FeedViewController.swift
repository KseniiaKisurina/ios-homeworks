//
//  FeedViewController.swift
//  Navigation
//
//  Created by Сергей on 28.04.2023.
//

import UIKit

class FeedViewController: UIViewController {

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = UIColor.white
            title = "Feed"
                    
        }
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            
            let button = UIButton(type: .system)
            button.frame = CGRect(origin: CGPoint(x: 30, y: 120), size:CGSize(width: 150, height: 30))
            button.setTitle("Post", for: .normal)
            button.backgroundColor = .green
            view.addSubview(button)
            button.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        }
        @objc func showPost() {
            let postViewController = PostViewController()
            navigationController?.pushViewController(postViewController, animated: true)
        }


}
