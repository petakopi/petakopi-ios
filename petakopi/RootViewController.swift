//
//  RootViewController.swift
//  petakopi
//
//  Created by Amree Zaid on 06/01/2023.
//

import UIKit

class RootViewController: UITabBarController {

    init() {
        super.init(nibName: nil, bundle: nil)
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    private func setUp() {
        var viewControllers = [UIViewController]()
        Self.tabs.forEach { tab in
            let vc = UIViewController()
            vc.tabBarItem = UITabBarItem(
                title: NSLocalizedString(tab.titleKey, comment: ""),
                image: UIImage(systemName: tab.icon),
                selectedImage: nil
            )
            viewControllers.append(vc)
        }
        self.viewControllers = viewControllers
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RootViewController {

    static let tabs = [
        Tab(url: Api.rootURL!, icon: "house.fill", titleKey: "Shops"),
        Tab(url: Api.rootURL!, icon: "map.fill", titleKey: "Map"),
    ]

    struct Tab {
        let url: URL
        let icon: String
        let titleKey: String
    }
}
