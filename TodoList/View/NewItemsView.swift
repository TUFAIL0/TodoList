//
//  NewItemsView.swift
//  TodoList
//
//  Created by Tufail Ahmad on 15/10/23.
//

import SwiftUI

struct NewItemsView: View {
    @StateObject var viewModel = NewItemsViewViewModel()
    @Binding var newItemPresented : Bool
    var body: some View {
        VStack{
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top , 100)
            Form{
                //Title
                TextField("Title" , text : $viewModel.title )
                    .textFieldStyle(DefaultTextFieldStyle())
                //Due Date
                DatePicker("Due date" , selection: $viewModel.dueDate)
                    .datePickerStyle(.graphical)
                //Button
                
                TLButton(title: "Save", backgroud: .pink
                )
                {if viewModel.canSave{
                        viewModel.save()
                        newItemPresented = false
                    }
                    else {
                        viewModel.showAlert = true
                    }
                    
                }
                .padding()
            }.alert(isPresented: $viewModel.showAlert) {
                Alert(title : Text("Error"), message: Text("please fill in all field and select due date that us today pr newer")
                      )
            }
        }
    }
}

struct NewItemView_Previews : PreviewProvider {
    static var previews: some View{
        NewItemsView(newItemPresented: Binding(get: {
            return true
        }, set: {
            _ in
        }))
    }
}
