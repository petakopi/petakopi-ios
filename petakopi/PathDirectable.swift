//
//  PathDirectable.swift
//  petakopi
//
//  Created by Amree Zaid on 07/01/2023.
//

import Foundation
import UIKit
import Turbo

protocol PathDirectable where Self: RoutingController {
    func executePathDirective(_ proposal: VisitProposal)
}

extension PathDirectable {
    func executePathDirective(_ proposal: VisitProposal) {
        guard proposal.isPathDirective else { return }

        switch proposal.url.path {
        case "/recede_historical_location":
            dismissOrPopViewController()
        case "/refresh_historical_location":
            refreshWebView()
        default:
            ()
        }

    }
    
    private func dismissOrPopViewController() {
        if (presentedViewController != nil) {
            presentedViewController?.dismiss(animated: true)
            refreshWebView()

        } else {
            popViewController(animated: true)
        }
    }
}

extension VisitProposal {
    var isPathDirective: Bool {
        return url.path.contains("_historical_location")
    }
}
