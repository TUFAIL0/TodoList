//
//  RegistrationView.swift
//  TodoList
//
//  Created by Tufail Ahmad on 15/10/23.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewViewModel()
    var body: some View {
        VStack{
            //Header
            HeaderView(title: "Register", Subtitle: "Start Organizing life", angle: -15, background: .orange)
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address" , text :$viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                SecureField("Password" , text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account", backgroud: .green)
                {
                    viewModel.register()
                    //Registration
                }
            }
            .offset(y: -50)
            Spacer()
        }
    }
}


struct RegistrationView_Previews : PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
