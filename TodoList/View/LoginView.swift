//
//  LoginView.swift
//  TodoList
//
//  Created by Tufail Ahmad on 15/10/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To Do List", Subtitle: "Get things done", angle: 15, background: .purple)
                //Login form
                if !viewModel.errorMessage.isEmpty{
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                }
                
                Form{
                    
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Password" , text : $viewModel.password) .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Log In", backgroud: .blue){
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y : -50)
                //Create account
                
                VStack{
                    Text("New around here ? ")
                    
                    
                    NavigationLink("Create An Account", destination: RegistrationView())
                }
                .padding(.bottom, 50 )
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
