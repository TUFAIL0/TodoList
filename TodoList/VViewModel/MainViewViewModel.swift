//
//  MainViewViewModel.swift
//  TodoList
//
//  Created by Tufail Ahmad on 15/10/23.
//
import FirebaseAuth
import Foundation
class MainViewViewModel : ObservableObject{
    @Published var CurrentUserId : String = ""
    private var handler : AuthStateDidChangeListenerHandle?
    
    
    init() {
        
        self.handler = Auth.auth().addStateDidChangeListener {[weak self] _, user in
            self?.CurrentUserId = user?.uid ?? ""
        }
    }
    public var isSigned: Bool {
        return Auth.auth().currentUser != nil
    }
    
}
