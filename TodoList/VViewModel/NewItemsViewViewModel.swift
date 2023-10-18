//
//  NewItemsViewViewModel.swift
//  TodoList
//
//  Created by Tufail Ahmad on 15/10/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
class NewItemsViewViewModel : ObservableObject{
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    init(){}
    
    func save(){
        guard canSave else {
            return
        }
        //get Current userId
        
        guard let uId = Auth.auth().currentUser?.uid else{
            return
        }
        //Create a model
        let newId = UUID().uuidString
        let newItem = TodoListItems(id: newId, title: title, dueDate: dueDate.timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false)
        
        //save a model
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uId)
            .collection("Todos")
            .document(newId)
            .setData(newItem.asDictionary())
        
    }
    var canSave : Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else{
            return false
        }
        guard dueDate >= Date().addingTimeInterval(-86400)
        else{
            return false
        }
        return true
    }
    
    
}
