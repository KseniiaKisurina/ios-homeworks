//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Сергей on 04.05.2023.
//

import UIKit

class ProfileHeaderView: UIView {
    
    
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.cornerRadius = 50
        imageView.image = UIImage(named: "Cat")
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView

    }()
    
    private lazy var statusButton : UIButton = {
        let button = UIButton()
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 6
        button.layer.shadowOpacity = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        
        
        return button
    }()
    
    private lazy var titleStatus : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        label.text = "Waiting for something.."
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

   private lazy var titleName: UILabel = {

       let label = UILabel()
        label.text = "Hipster Cat"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false

        return label

    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(statusButton)
        addSubview(titleStatus)
        addSubview(titleName)
        addSubview(imageView)
    }
    required init?(coder: NSCoder) {
        fatalError()
        addSubview(statusButton)
        addSubview(titleStatus)
        addSubview(titleName)
        addSubview(imageView)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 100),
            
            titleName.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20),
            titleName.topAnchor.constraint(equalTo: topAnchor, constant: 27),
            titleName.widthAnchor.constraint(equalToConstant: 100),
           
            
            titleStatus.leadingAnchor.constraint(equalTo: titleName.leadingAnchor),
            titleStatus.topAnchor.constraint(equalTo: titleName.bottomAnchor, constant: 34),
            titleStatus.widthAnchor.constraint(equalToConstant: 150),
           
            
            statusButton.topAnchor.constraint(equalTo: titleStatus.bottomAnchor, constant: 34),
            statusButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            statusButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            statusButton.heightAnchor.constraint(equalToConstant: 50),
            statusButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
    
}
