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
        let discoverView = DiscoverView()
        discoverView.tabBarItem.image = UIImage.init(systemName: "lightbulb")
        discoverView.tabBarItem.title = "Discover"
        let homeView = HomeView()
        homeView.tabBarItem.image = UIImage.init(systemName: "house")
    
        homeView.tabBarItem.title = "Home"
        let tabBars = [discoverView, homeView]
        viewControllers = tabBars
    }
    
}
