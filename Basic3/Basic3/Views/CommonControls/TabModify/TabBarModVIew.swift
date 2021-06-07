//
//  TabBarModVIew.swift
//  Basic3
//
//  Created by Mac on 06/06/2021.
//

import UIKit

class TabBarModViewController: UITabBarController, UINavigationControllerDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        selectedIndex = 1
        if let selectedTab = tabBar.selectedItem {
            tabBar(tabBar, didSelect: selectedTab)
        }
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
//        guard let font = UIFont(name: "HelveticaNeue-Bold", size: 12) else { return }
        
//        resetTabBarStyle()
//        item.setTitleTextAttributes([NSAttributedString.Key.font: font], for: .normal)
    }
    
//    private func resetTabBarStyle() {
//        guard let font = UIFont(name: "HelveticaNeue", size: 12) else { return }
//        guard let items = tabBar.items else { return }
//
//        for item in items {
//            item.setTitleTextAttributes([NSAttributedString.Key.font: font], for: .normal)
//        }
//    }

}
