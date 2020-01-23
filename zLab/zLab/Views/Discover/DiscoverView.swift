//
//  DiscoverView.swift
//  zLab
//
//  Created by Luqmaan Khan on 1/21/20.
//  Copyright © 2020 Luqmaan Khan. All rights reserved.
//

import UIKit

class DiscoverView: UIViewController {
    
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        navigationController?.navigationBar.topItem?.title = "Discover"
        configureTableView()
    }
    
    private func configureTableView() {
        tableView = UITableView()
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        tableView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight);
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.6196078431, blue: 0.2980392157, alpha: 1)
        tableView.separatorStyle = .none
        tableView.register(DiscoverTableViewCell.self, forCellReuseIdentifier: "DiscoverTableViewCell")
        self.view.addSubview(tableView)
    }
}

extension DiscoverView: UITableViewDelegate {
    
}

extension DiscoverView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        //TODO: Number of Categories
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DiscoverTableViewCell", for: indexPath) as? DiscoverTableViewCell else {return UITableViewCell()}
        if indexPath == [0,0] {
            cell.layout.itemSize = CGSize(width: UIScreen.main.bounds.width - 40, height: 300)
            //the elements within the collectionview cell are different than the others
        } else {
            cell.layout.itemSize = CGSize(width: 200, height: 300)
            //call the basic ui setup
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //TODO: Category Names
        var sectionTitle = ""
        switch section {
        case 0:
             sectionTitle = "Featured"
        case 1:
            sectionTitle = "Computer Science"
        case 2:
            sectionTitle = "Math"
        case 3:
            sectionTitle = "Data Science"
        default:
            break
        }
        return sectionTitle
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let categoryLabel = UILabel()
        categoryLabel.frame = CGRect(x: 19, y: 0, width: UIScreen.main.bounds.width, height: 30)
        categoryLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        categoryLabel.font.fontDescriptor.withDesign(.rounded)
        categoryLabel.text = self.tableView(tableView, titleForHeaderInSection: section)
        let headerView = UIView()
        headerView.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.6196078431, blue: 0.2980392157, alpha: 1)
        headerView.addSubview(categoryLabel)
       return headerView
    }
    
}
