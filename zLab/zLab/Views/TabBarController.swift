//
//  TabBarController.swift
//  zLab
//
//  Created by Luqmaan Khan on 1/21/20.
//  Copyright © 2020 Luqmaan Khan. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureTabBar()
    }

    func configureTabBar() {
        
        let discoverVC = DiscoverView()
        discoverVC.tabBarItem.image = UIImage.init(systemName: "lightbulb")
        discoverVC.tabBarItem.title = "Discover"
        let tabBars = [discoverVC]
        viewControllers = tabBars
    }
    
}
