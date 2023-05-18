//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Сергей on 28.04.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    let profileView = ProfileHeaderView()

    var newButton: UIButton = {
        let button = UIButton()
        button.setTitle("Tap here", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGreen
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
         override func viewDidLoad() {
             super.viewDidLoad()
             title = "Profile"
             view.backgroundColor = .lightGray
             view.addSubview(profileView)
             view.addSubview(newButton)
             
        profileView.translatesAutoresizingMaskIntoConstraints = false
             
              NSLayoutConstraint.activate([
                  profileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                  profileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                  profileView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                  profileView.heightAnchor.constraint(equalToConstant: 220),
                  
                  newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                  newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                  newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
              ])

        profileView.frame = view.frame

         }
}
