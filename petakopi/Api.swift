//
//  Api.swift
//  petakopi
//
//  Created by Amree Zaid on 06/01/2023.
//

import Foundation

struct Api {
#if DEBUG
    static let rootURL = URL(string: "http://localhost:3000")
#else
    static let rootURL = URL(string: "https://petakopi.my")
#endif
    
    struct Path {
        static let map = Api.rootURL?.appendingPathComponent("map")
    }
}
