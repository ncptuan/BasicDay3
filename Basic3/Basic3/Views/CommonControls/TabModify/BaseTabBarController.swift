//
//  BaseTabBarController.swift
//  Basic3
//
//  Created by Mac on 04/06/2021.
//

//import UIKit
//
//class BaseTabBarController: UITabBarController {
//    var customTabBar: CustomTabBar!
//    var tabBarHeight: CGFloat = 67.0
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.loadTabBar()
//    }
//
//    func loadTabBar() {
//        let tabbarItems: [TabItem] = [.notification, .index, .info]
//        setupCustomTabMenu(tabbarItems, completion: { viewControllers in
//            self.viewControllers = viewControllers
//        })
//        selectedIndex = 1
//    }
//
//    func setupCustomTabMenu(_ menuItems: [TabItem], completion: @escaping ([UIViewController]) -> Void) {
//        let frame = tabBar.frame
//
//        // Ẩn tab bar mặc định của hệ thống đi
//        tabBar.isHidden = false
//        // Khởi tạo custom tab bar
//        customTabBar = CustomTabBar(menuItems: menuItems, frame: frame)
//        customTabBar.translatesAutoresizingMaskIntoConstraints = false
//        customTabBar.clipsToBounds = true
//        customTabBar.itemTapped = changeTab(tab:)
//        view.addSubview(customTabBar)
//        view.backgroundColor = .white
//
//        // Auto layout cho custom tab bar
//        NSLayoutConstraint.activate([
//            customTabBar.leadingAnchor.constraint(equalTo: tabBar.leadingAnchor),
//            customTabBar.trailingAnchor.constraint(equalTo: tabBar.trailingAnchor),
//            customTabBar.widthAnchor.constraint(equalToConstant: tabBar.frame.width),
//            customTabBar.heightAnchor.constraint(equalToConstant: tabBarHeight),
//            customTabBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
//        ])
//    }
//
//    func changeTab(tab: Int) {
//        self.selectedIndex = tab
//    }
//}
