//
//  ContentView.swift
//  TodoList
//
//  Created by Tufail Ahmad on 15/10/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSigned, !viewModel.CurrentUserId.isEmpty{
            //signedIn
           accountView
        }
        else{
            //LoginView
            LoginView()
        }
    }
    @ViewBuilder
    var accountView: some View{
        TabView{
            TodoListView(userId : viewModel.CurrentUserId)
                .tabItem {
                    Label("Home" , systemImage: "house")
                    
                }
            profileView()
                .tabItem{
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

struct ContentView_Preview : PreviewProvider{
    static var previews: some View{
        MainView()
    }
}
