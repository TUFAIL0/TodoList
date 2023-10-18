//
//  TodoListItems.swift
//  TodoList
//
//  Created by Tufail Ahmad on 15/10/23.
//

import Foundation

struct TodoListItems : Codable , Identifiable{
    let id : String
    let title : String
    let dueDate : TimeInterval
    let createdDate : TimeInterval
    
    var isDone : Bool
    
    mutating func setDone(_ state: Bool)
    {
        isDone = state
    }
}
