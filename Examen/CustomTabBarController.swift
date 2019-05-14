//
//  CustomTabBarController.swift
//  Examen
//
//  Created by Alex Lin on 13/03/2019.
//  Copyright © 2019 Alex Lin. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBarItem.appearance()
            .setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.white], for: .selected)
        UITabBarItem.appearance()
            .setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.white], for: .normal)
        
        tabBarItem = self.tabBar.items![0]
        tabBarItem.image = UIImage(named: "icons8-search")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.selectedImage = UIImage(named: "icons8-search_filled")?.withRenderingMode(.alwaysOriginal)
        
        tabBarItem = self.tabBar.items![1]
        tabBarItem.image = UIImage(named: "icons8-butterfly")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.selectedImage = UIImage(named: "icons8-butterfly_filled")?.withRenderingMode(.alwaysOriginal)
    }

}
