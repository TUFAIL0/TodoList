//
//  User.swift
//  TodoList
//
//  Created by Tufail Ahmad on 15/10/23.
//

import Foundation
struct User : Codable{
    let id : String
    let name : String
    let email : String
    let joined : TimeInterval
}
