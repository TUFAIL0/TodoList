//
//  NewItemViewViemModel.swift
//  TodoList
//
//  Created by Tufail Ahmad on 15/10/23.
//
import FirebaseFirestore
import Foundation

//ViewModel for list of Item View
class TodoListViewViewModel : ObservableObject{
    @Published var showingNewItemView = false
    private let userId :  String
    init(userId : String){
        self.userId = userId
    }
    
    func delete(id : String){
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
        
    }
    
}