//
//  ViewControllerVendor.swift
//  petakopi
//
//  Created by Amree Zaid on 06/01/2023.
//

import Foundation
import Turbo
import UIKit

struct ViewControllerVendor {
    static func viewController(
        for url: URL,
        properties: PathProperties = [:]
    ) -> UIViewController {
        let vc = WebViewController(url: url)
        vc.tabBarItem = tabBarItem(for: url)

        return vc
    }


    private static func tabBarItem(for url: URL) -> UITabBarItem? {
        if let tab = RootViewController.tabs.first(
            where: { tab in tab.url == url }
        ){
            return UITabBarItem(
                title: NSLocalizedString(tab.titleKey, comment: ""),
                image: UIImage(systemName: tab.icon),
                selectedImage: nil
            )
        } else {
            return nil
        }
    }
}
