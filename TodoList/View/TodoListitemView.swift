//
//  NewItemView.swift
//  TodoList
//
//  Created by Tufail Ahmad on 15/10/23.
//

import SwiftUI

struct TodoListitemView: View {
    @StateObject var viewModel = profileViewViewModel()
    let item : TodoListItems
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.title)
                    
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated , time : .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            Button{
                viewModel.toggleIsDone(item : item)
                
            }label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
            }
        }
    }
}

struct ToddListItemView_Previews : PreviewProvider {
    static var previews: some View{
        TodoListitemView(item: TodoListItems(id: "123", title: "Get Milk", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: true) )
    }
}
