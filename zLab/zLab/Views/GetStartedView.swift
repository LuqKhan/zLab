//
//  GetStartedView.swift
//  zLab
//
//  Created by Luqmaan Khan on 1/20/20.
//  Copyright © 2020 Luqmaan Khan. All rights reserved.
//

import UIKit
import AuthenticationServices

class GetStartedView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.6196078431, blue: 0.2980392157, alpha: 1)
        //setup logoImageView
        let zLabImageView = UIImageView(image: UIImage(named: "zLabLogo"))
        zLabImageView.contentMode = .scaleAspectFill
        view.addSubview(zLabImageView)
        zLabImageView.translatesAutoresizingMaskIntoConstraints = false
        zLabImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 250).isActive = true
        zLabImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        zLabImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        //setup sub-header label
        let subHeaderLabel = UILabel()
        subHeaderLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        subHeaderLabel.font.fontDescriptor.withDesign(.rounded)
        subHeaderLabel.numberOfLines = 0
        subHeaderLabel.lineBreakMode = .byWordWrapping
        subHeaderLabel.text = "Live Classes Anytime.🤗"
        view.addSubview(subHeaderLabel)
        subHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
        subHeaderLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 550).isActive = true
        subHeaderLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45).isActive = true
        subHeaderLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10).isActive = true
        
        //setup Apple sign-in button
        let appleButton = ASAuthorizationAppleIDButton()
        //TODO: The target for the button method is in the Presenter
        //appleButton.addTarget(self, action: #selector(didTapAppleButton), for: .touchUpInside)
        view.addSubview(appleButton)
        appleButton.translatesAutoresizingMaskIntoConstraints = false
        appleButton.translatesAutoresizingMaskIntoConstraints = false
        appleButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 700).isActive = true
        appleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        appleButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        appleButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
}
