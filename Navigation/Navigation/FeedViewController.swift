//
//  FeedViewController.swift
//  Navigation
//
//  Created by Сергей on 28.04.2023.
//

import UIKit

class FeedViewController: UIViewController {
    
    var newPost = Post(title:"News for today")
    
    private lazy var buttonOne: UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("Tap One", for: .normal)
        button.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        
        return button
    }()
    
    private lazy var buttonTwo: UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("Tap Two", for: .normal)
        button.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        
        return button
    }()
    
    private lazy var stackView: UIStackView = { [unowned self] in
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.clipsToBounds = true
        stackView.alignment = .center
        stackView.spacing = 10
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        
        stackView.addArrangedSubview(buttonOne)
        stackView.addArrangedSubview(buttonTwo)
        
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = "Feed"
        
        view.addSubview(stackView)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200)
        ])
    }
    
    @objc func showPost() {
        let postViewController = PostViewController()
        postViewController.title = newPost.title
        navigationController?.pushViewController(postViewController, animated: true)
    }
}
