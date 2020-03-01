//
//  Photo.swift
//  MultiAPI
//
//  Created by nabi jung on 2/25/20.
//

import Foundation

class Photo {
    
    var id: String
    var url: String
    var width: Int
    var height: Int
    
    init(id:String, url:String, width:Int, height:Int) {
        self.id = id
        self.url = url
        self.width = width
        self.height = height
    }
    
}
