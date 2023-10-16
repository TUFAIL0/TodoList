//
//  TodoListApp.swift
//  TodoList
//
//  Created by Tufail Ahmad on 15/10/23.
//
import Firebase
import SwiftUI


@main
struct TodoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
