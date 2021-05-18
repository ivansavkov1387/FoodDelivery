//
//  UserData.swift
//  FoodDelivery
//
//  Created by Иван on 5/17/21.
//

import Foundation

struct UserData {
    let name: String
    let password: String
    
    static func getUserData() -> UserData {
        UserData(name: "1", password: "1")
    }
}
