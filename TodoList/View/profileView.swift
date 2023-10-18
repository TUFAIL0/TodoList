//
//  profileView.swift
//  TodoList
//
//  Created by Tufail Ahmad on 15/10/23.
//

import SwiftUI

struct profileView: View {
    @StateObject var viewModel = profileViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Profile")
            .toolbar{
                Button{
                    //action
                }label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    profileView()
}
