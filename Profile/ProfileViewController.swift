//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Сергей on 28.04.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    let profileView = ProfileHeaderView()


         override func viewDidLoad() {
             super.viewDidLoad()
             title = "Profile"
             view.backgroundColor = .lightGray
             view.addSubview(profileView)

}
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        profileView.translatesAutoresizingMaskIntoConstraints = false
              NSLayoutConstraint.activate([
                  profileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                  profileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                  profileView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                  profileView.heightAnchor.constraint(equalToConstant: 220)
              ])

        profileView.frame = view.frame
    }
}
