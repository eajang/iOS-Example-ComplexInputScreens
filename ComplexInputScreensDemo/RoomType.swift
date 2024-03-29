//
//  RoomType.swift
//  ComplexInputScreensDemo
//
//  Created by Eunae Jang on 17/09/2019.
//  Copyright © 2019 Eunae Jang. All rights reserved.
//

import Foundation

struct RoomType: Equatable {
    var id: Int
    var name: String
    var shortName: String
    var price: Int
    
    static var all: [RoomType] {
        return [RoomType(id: 0, name: "Two Queens", shortName: "2Q", price: 179),
                RoomType(id: 1, name: "One King", shortName: "K", price: 209),
                RoomType(id: 2, name: "Penthouse Suite", shortName: "PHS", price: 309)]
    }
}
