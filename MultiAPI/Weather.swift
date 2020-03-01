//
//  Weather.swift
//  MultiAPI
//
//  Created by nabi jung on 2/25/20.
//

import Foundation

class Weather {
    
    var location: String
    var temp: Int
    var high: Int
    var low: Int
    var description: String
    
    init(location: String, temp: Int, high: Int, low: Int, description: String) {
        self.location = location
        self.temp = temp
        self.high = high
        self.low = low
        self.description = description
    }
    
}
