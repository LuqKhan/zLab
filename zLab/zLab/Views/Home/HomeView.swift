//
//  HomeView.swift
//  zLab
//
//  Created by Luqmaan Khan on 1/24/20.
//  Copyright © 2020 Luqmaan Khan. All rights reserved.
//

import UIKit

class HomeView: UIViewController {
    
    
    let userNameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 150, height: 50))
    @objc let startClassRoomButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
    
    //TODO: Fix bug where title disappears when coming back to this view from the start classroom view
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        navigationController?.navigationBar.topItem?.title = "Home"
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.6196078431, blue: 0.2980392157, alpha: 1)
        
        //userName Label
        userNameLabel.font = UIFont.systemFont(ofSize: 20, weight: .light)
        userNameLabel.font.fontDescriptor.withDesign(.rounded)
        view.addSubview(userNameLabel)
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        userNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        userNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30).isActive = true
        userNameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 180).isActive = true
        userNameLabel.text = "Username"
        
        //start classroom button
        startClassRoomButton.addTarget(self, action: #selector(startClassroomTapped), for: .touchUpInside)
        startClassRoomButton.setTitle("Start Classroom", for: .normal)
        startClassRoomButton.setTitleColor(#colorLiteral(red: 0.01568627451, green: 0.5450980392, blue: 0.6588235294, alpha: 1), for: .normal)
        startClassRoomButton.layer.cornerRadius = 15
        startClassRoomButton.backgroundColor = #colorLiteral(red: 0.937254902, green: 0.9176470588, blue: 0.3529411765, alpha: 1)
        view.addSubview(startClassRoomButton)
        startClassRoomButton.translatesAutoresizingMaskIntoConstraints = false
        startClassRoomButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 650).isActive = true
        startClassRoomButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        startClassRoomButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        startClassRoomButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func startClassroomTapped() {
        let startClassroomView = StartClassroomView()
        navigationController?.pushViewController(startClassroomView, animated: true)
    }
}
