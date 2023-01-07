//
//  BaseNavigationController.swift
//  petakopi
//
//  Created by Amree Zaid on 06/01/2023.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
    }

    private func configureNavigationBar() {
        let navigationBarAppearance = UINavigationBarAppearance()
        
        navigationBarAppearance.configureWithOpaqueBackground()
        navigationBar.standardAppearance = navigationBarAppearance
        navigationBar.compactAppearance = navigationBarAppearance
        navigationBar.scrollEdgeAppearance = navigationBarAppearance
    }
}
