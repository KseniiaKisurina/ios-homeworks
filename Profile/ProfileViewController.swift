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
             view.backgroundColor = .lightGray
             title = "Profile"
             view.addSubview(profileView)

}
}
