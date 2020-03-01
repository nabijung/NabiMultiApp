//
//  Restaurant.swift
//  MultiAPI
//
//  Created by nabi jung on 2/25/20.
//

import Foundation

class Restaurant {
    
    var name: String
    var isClosed: Bool
    var location: String
    
    init(name: String, isClosed: Bool, location: String) {
        self.location = location
        self.isClosed = isClosed
        self.name = name
    }
    
}
