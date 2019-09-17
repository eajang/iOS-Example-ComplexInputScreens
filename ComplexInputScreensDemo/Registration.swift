//
//  Registration.swift
//  ComplexInputScreensDemo
//
//  Created by Eunae Jang on 17/09/2019.
//  Copyright © 2019 Eunae Jang. All rights reserved.
//

import Foundation

struct Registration {
    static let wifiCost = 10
    
    var firstName: String
    var lastName: String
    var emailAddress: String
    
    var checkInDate: Date
    var checkOutDate: Date
    
    var numberOfAdults: Int
    var numberOfChildern: Int
    
    var roomType: RoomType
    var wifi: Bool
}
