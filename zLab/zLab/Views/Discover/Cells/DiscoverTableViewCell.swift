//
//  DiscoverTableViewCell.swift
//  zLab
//
//  Created by Luqmaan Khan on 1/22/20.
//  Copyright © 2020 Luqmaan Khan. All rights reserved.
//

import UIKit

class DiscoverTableViewCell: UITableViewCell {
    
    var collectionView: UICollectionView!
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureCollectionView() {
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 1.0, left: 1.0, bottom: 1.0, right: 1.0)
        let frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 300)
        collectionView = UICollectionView(frame:frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.6196078431, blue: 0.2980392157, alpha: 1)
        collectionView.register(DiscoverCollectionViewCell.self, forCellWithReuseIdentifier: "DiscoverCollectionViewCell")
        self.contentView.addSubview(collectionView)
    }
}

extension DiscoverTableViewCell: UICollectionViewDelegate {
}
extension DiscoverTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DiscoverCollectionViewCell", for: indexPath) as? DiscoverCollectionViewCell else {return UICollectionViewCell()}
        cell.setupUI()
        return cell
    }
}
extension DiscoverTableViewCell: UICollectionViewDelegateFlowLayout {

}
