//
//  AppearanceHelper.swift
//  zLab
//
//  Created by Luqmaan Khan on 1/21/20.
//  Copyright © 2020 Luqmaan Khan. All rights reserved.
//

import Foundation
import UIKit

enum AppearanceHelper {
    
    static func setupBasicAppearance() {
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        UITabBar.appearance().tintColor = .black
        UITabBar.appearance().backgroundColor = #colorLiteral(red: 0.6431372549, green: 0.01176470588, blue: 0.4352941176, alpha: 1)
        UITabBar.appearance().barTintColor = #colorLiteral(red: 0.6431372549, green: 0.01176470588, blue: 0.4352941176, alpha: 1)
        UITabBar.appearance().unselectedItemTintColor = .black
        UINavigationBar.appearance().backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.6196078431, blue: 0.2980392157, alpha: 1)
        UINavigationBar.appearance().barTintColor = #colorLiteral(red: 0.9490196078, green: 0.6196078431, blue: 0.2980392157, alpha: 1)
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        let font = UIFont.systemFont(ofSize: 45, weight: .bold)
        font.fontDescriptor.withDesign(.rounded)
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.font : font]
    }
}
