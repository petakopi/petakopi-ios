//
//  Global.swift
//  petakopi
//
//  Created by Amree Zaid on 06/01/2023.
//

import Foundation
import Turbo

struct Global {
    static let pathConfiguration = PathConfiguration(
        sources:
            [
                .file(
                    Bundle.main.url(
                        forResource: "path_configuration",
                        withExtension: "json"
                    )!)
            ]
    )
}
