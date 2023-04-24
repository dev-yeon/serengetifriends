//
//  Friend.swift
//  MyFriends
//
//  Created by yeon on 2023/04/24.
//

import Foundation

struct Friend : Identifiable {
    var id : UUID = UUID()
    var name : String
    var description : String
    var imageName : String
    var link : String 
    
    var preDescription : String {
        return String(description.prefix(70))
    }
}
