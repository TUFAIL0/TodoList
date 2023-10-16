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
        VStack {
            LoginView()
        }
        
    }
}

struct ContentView_Preview : PreviewProvider{
    static var previews: some View{
        MainView()
    }
}
