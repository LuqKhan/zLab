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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DiscoverTableViewCell", for: indexPath) as? DiscoverTableViewCell else {return UITableViewCell()}
        return cell
    }
}
