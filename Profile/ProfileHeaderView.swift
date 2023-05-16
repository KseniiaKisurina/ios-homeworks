//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Сергей on 04.05.2023.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private var statusText: String = ""
    
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
    
    private  let textField: UITextField = {
           let textField = UITextField()
           textField.textColor = .black
           textField.minimumFontSize = 15
           textField.backgroundColor = .white
           textField.layer.cornerRadius = 12
           textField.layer.borderColor = UIColor.black.cgColor
           textField.layer.borderWidth = 1
           textField.placeholder = ""
        textField.translatesAutoresizingMaskIntoConstraints = false
        
           return textField
       }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(statusButton)
        addSubview(titleStatus)
        addSubview(titleName)
        addSubview(imageView)
        addSubview(textField)
    }
    required init?(coder: NSCoder) {
        fatalError()
        addSubview(statusButton)
        addSubview(titleStatus)
        addSubview(titleName)
        addSubview(imageView)
        addSubview(textField)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        statusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        textField.addTarget(self, action: #selector(statusTextChanged(_:)), for: .editingChanged)

        
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
           
            
            statusButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 15),
            statusButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            statusButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            statusButton.heightAnchor.constraint(equalToConstant: 50),
            statusButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            textField.topAnchor.constraint(equalTo: titleStatus.bottomAnchor, constant: 15),
            textField.heightAnchor.constraint(equalToConstant: 40),
            textField.widthAnchor.constraint(equalToConstant: 200),
            textField.leadingAnchor.constraint(equalTo: titleName.leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
        ])
    }
    
    @objc func buttonPressed() {
        titleStatus.text = statusText
        if titleStatus.text  == "" {
            titleStatus.text = "Enter the status..."
        }
    }
    
    @objc func statusTextChanged(_ textField: UITextField) {
        if let titleStatus = textField.text {
            statusText = titleStatus
        }
    }
}
