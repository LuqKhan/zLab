//
//  DiscoverCollectionViewCell.swift
//  zLab
//
//  Created by Luqmaan Khan on 1/22/20.
//  Copyright © 2020 Luqmaan Khan. All rights reserved.
//

import UIKit
import AVFoundation

class DiscoverCollectionViewCell: UICollectionViewCell {
    
    var videoPlayerView = VideoPlayerView()
    var hostNameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 35))
    var numberOfViewersLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 30, height: 15))
    var subjectLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
    var oneStar = UIImageView(image: UIImage.init(systemName: "star"))
    var twoStar = UIImageView(image: UIImage.init(systemName: "star"))
    var threeStar = UIImageView(image: UIImage.init(systemName: "star"))
    var fourStar = UIImageView(image: UIImage.init(systemName: "star"))
    var fiveStar = UIImageView(image: UIImage.init(systemName: "star"))
    
    func setupUI() {
        //videoPlayerView
        videoPlayerView.backgroundColor = .white
        contentView.addSubview(videoPlayerView)
        videoPlayerView.layer.cornerRadius = 10
        videoPlayerView.translatesAutoresizingMaskIntoConstraints = false
        videoPlayerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        videoPlayerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25).isActive = true
        videoPlayerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 25).isActive = true
        videoPlayerView.heightAnchor.constraint(equalToConstant: 180).isActive = true
        
        //hostNameLabel
        hostNameLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        hostNameLabel.font.fontDescriptor.withDesign(.rounded)
        contentView.addSubview(hostNameLabel)
        hostNameLabel.translatesAutoresizingMaskIntoConstraints = false
        hostNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25).isActive = true
        hostNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 50).isActive = true
        hostNameLabel.topAnchor.constraint(equalTo: videoPlayerView.bottomAnchor, constant: 10).isActive = true
        hostNameLabel.text = "HostName"
        
        //numberOfViewersLabel
        numberOfViewersLabel.font = UIFont.systemFont(ofSize: 10, weight: .bold)
        numberOfViewersLabel.font.fontDescriptor.withDesign(.rounded)
        numberOfViewersLabel.textColor = .black
        videoPlayerView.addSubview(numberOfViewersLabel)
        numberOfViewersLabel.translatesAutoresizingMaskIntoConstraints = false
        guard let superView = numberOfViewersLabel.superview else {return}
        numberOfViewersLabel.topAnchor.constraint(equalTo: superView.topAnchor, constant: 150).isActive = true
        numberOfViewersLabel.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: 10).isActive = true
        numberOfViewersLabel.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -100).isActive = true
        numberOfViewersLabel.text = "# of viewers"
        
        //subjectLabel
        subjectLabel.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        subjectLabel.font.fontDescriptor.withDesign(.rounded)
        subjectLabel.numberOfLines = 0
        subjectLabel.lineBreakMode = .byWordWrapping
        contentView.addSubview(subjectLabel)
        subjectLabel.translatesAutoresizingMaskIntoConstraints = false
        subjectLabel.topAnchor.constraint(equalTo: hostNameLabel.bottomAnchor, constant: 10).isActive = true
        subjectLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25).isActive = true
        subjectLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 40).isActive = true
        subjectLabel.text = "API Authentication"
        
        //stars
        let starsStackView = UIStackView()
        starsStackView.axis = .horizontal
        starsStackView.alignment = .fill
        starsStackView.distribution = .fillEqually
        oneStar.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        twoStar.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        threeStar.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        fourStar.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        fiveStar.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        oneStar.tintColor = .black
        twoStar.tintColor = .black
        threeStar.tintColor = .black
        fourStar.tintColor = .black
        fiveStar.tintColor = .black
        
        
        oneStar.translatesAutoresizingMaskIntoConstraints = false
        twoStar.translatesAutoresizingMaskIntoConstraints = false
        threeStar.translatesAutoresizingMaskIntoConstraints = false
        fourStar.translatesAutoresizingMaskIntoConstraints = false
        fiveStar.translatesAutoresizingMaskIntoConstraints = false
        oneStar.heightAnchor.constraint(equalToConstant: 10).isActive = true
        oneStar.widthAnchor.constraint(equalToConstant: 10).isActive = true
        twoStar.heightAnchor.constraint(equalToConstant: 10).isActive = true
        twoStar.widthAnchor.constraint(equalToConstant: 10).isActive = true
        threeStar.heightAnchor.constraint(equalToConstant: 10).isActive = true
        threeStar.widthAnchor.constraint(equalToConstant: 10).isActive = true
        fourStar.heightAnchor.constraint(equalToConstant: 10).isActive = true
        fourStar.widthAnchor.constraint(equalToConstant: 10).isActive = true
        fiveStar.heightAnchor.constraint(equalToConstant: 10).isActive = true
        fiveStar.widthAnchor.constraint(equalToConstant: 10).isActive = true
        
        starsStackView.addArrangedSubview(oneStar)
        starsStackView.addArrangedSubview(twoStar)
        starsStackView.addArrangedSubview(threeStar)
        starsStackView.addArrangedSubview(fourStar)
        starsStackView.addArrangedSubview(fiveStar)
        contentView.addSubview(starsStackView)
        starsStackView.translatesAutoresizingMaskIntoConstraints = false
        starsStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant:170).isActive = true
        starsStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -140).isActive = true
        starsStackView.topAnchor.constraint(equalTo: videoPlayerView.bottomAnchor, constant: 20).isActive = true
        
    }
}
