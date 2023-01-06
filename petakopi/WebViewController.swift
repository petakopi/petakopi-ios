//
//  WebViewController.swift
//  petakopi
//
//  Created by Amree Zaid on 06/01/2023.
//

import Foundation
import Turbo
import UIKit

class WebViewController: VisitableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureDismissButton()
    }

    private func configureDismissButton() {
        if presentingViewController != nil {
            navigationItem.rightBarButtonItem = UIBarButtonItem(
                barButtonSystemItem: .close,
                target: self,
                action: #selector(dismissModal)
            )
        }
    }


   override func visitableDidRender() {
       navigationItem.title = visitableView.webView?.title
   }

    @objc func dismissModal() {
        dismiss(animated: true)
    }
}
