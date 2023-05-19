//
//  InfoViewController.swift
//  Navigation
//
//  Created by Сергей on 28.04.2023.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let button = UIButton(type: .system)
        button.frame = CGRect(origin: CGPoint(x: 50, y: 120), size:CGSize(width: 300, height: 50))
        button.setTitle("Open", for: .normal)
        button.backgroundColor = .red
        view.addSubview(button)
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
    }
    
    @objc func showAlert() {
        let alertViewController = UIAlertController(title: "No new posts for today", message: "No new posts for today", preferredStyle: .alert)
       let cancelAlertAction = UIAlertAction(title: "ok", style: .cancel)
        { (sender: UIAlertAction) -> Void in
            print("ok")
            }
       let yesterdayAlertAction = UIAlertAction(title: "See yesterday posts", style: .default)
        { (sender: UIAlertAction) -> Void in
            print("See yesterday posts")
            }
        alertViewController.addAction(cancelAlertAction)
        alertViewController.addAction(yesterdayAlertAction)
        present(alertViewController, animated: true)

}

}
