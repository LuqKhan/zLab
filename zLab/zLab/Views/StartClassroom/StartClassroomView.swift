//
//  StartClassroomView.swift
//  zLab
//
//  Created by Luqmaan Khan on 1/24/20.
//  Copyright © 2020 Luqmaan Khan. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class StartClassroomView: UIViewController {
    
    /*
     3. start button on bottom
     */
    let classroomTopicTextField = SkyFloatingLabelTextField(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
    let categoryLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 80, height: 35))
    let categoryPicker = UIPickerView(frame: CGRect(x: 0, y: 0, width: 150, height: 30))
    let videoPlayerView = VideoPlayerView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 220))
    @objc let startButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.6196078431, blue: 0.2980392157, alpha: 1)
        title = "Start Classroom"
        navigationController?.navigationBar.topItem?.title = ""
        navigationController?.navigationBar.tintColor = .white
        
        //classroom topic textfield
        classroomTopicTextField.placeholder = "Topic"
        classroomTopicTextField.title = "Enter the Topic of the Class"
        classroomTopicTextField.placeholderColor = .white
        classroomTopicTextField.textColor = .white
        classroomTopicTextField.tintColor = #colorLiteral(red: 0.0862745098, green: 0.8588235294, blue: 0.5764705882, alpha: 1)
        classroomTopicTextField.lineColor = .lightGray
        classroomTopicTextField.selectedLineColor = #colorLiteral(red: 0.0862745098, green: 0.8588235294, blue: 0.5764705882, alpha: 1)
        classroomTopicTextField.selectedTitleColor = #colorLiteral(red: 0.01568627451, green: 0.5450980392, blue: 0.6588235294, alpha: 1)
        classroomTopicTextField.lineHeight = 2.0
        classroomTopicTextField.selectedLineHeight = 5.0
        view.addSubview(classroomTopicTextField)
        classroomTopicTextField.translatesAutoresizingMaskIntoConstraints = false
        classroomTopicTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        classroomTopicTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        classroomTopicTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100).isActive = true
        
        //categoryLabel
        categoryLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        categoryLabel.font.fontDescriptor.withDesign(.rounded)
        categoryLabel.text = "Select a Category"
        view.addSubview(categoryLabel)
        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
        categoryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        categoryLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100).isActive = true
        categoryLabel.topAnchor.constraint(equalTo: classroomTopicTextField.bottomAnchor, constant: 30
        ).isActive = true
        
        //categoryPicker
        categoryPicker.dataSource = self
        categoryPicker.delegate = self
        view.addSubview(categoryPicker)
        categoryPicker.translatesAutoresizingMaskIntoConstraints = false
        categoryPicker.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: -70).isActive = true
        categoryPicker.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        categoryPicker.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        
        //videPlayerView
        videoPlayerView.backgroundColor = .white
        view.addSubview(videoPlayerView)
        videoPlayerView.translatesAutoresizingMaskIntoConstraints = false
        videoPlayerView.topAnchor.constraint(equalTo: categoryPicker.bottomAnchor, constant: 30).isActive = true
        videoPlayerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        videoPlayerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        videoPlayerView.heightAnchor.constraint(equalToConstant: 220).isActive = true
        
        //startButton
        startButton.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
               startButton.setTitle("Start!", for: .normal)
               startButton.setTitleColor(#colorLiteral(red: 0.01568627451, green: 0.5450980392, blue: 0.6588235294, alpha: 1), for: .normal)
               startButton.layer.cornerRadius = 15
               startButton.backgroundColor = #colorLiteral(red: 0.937254902, green: 0.9176470588, blue: 0.3529411765, alpha: 1)
               view.addSubview(startButton)
    }
    
    @objc func startButtonTapped() {
        
    }
    
}
extension StartClassroomView: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch row {
        case 0:
            return "Software Development"
        case 1:
            return "Computer Science"
        case 2:
           return "Physics"
        case 3:
            return "Math"
        default: break
        }
        return ""
    }
}
extension StartClassroomView: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 4
    }
}
