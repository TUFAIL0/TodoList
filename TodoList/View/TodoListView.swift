//
//  TodoListView.swift
//  TodoList
//
//  Created by Tufail Ahmad on 15/10/23.
//
import FirebaseFirestoreSwift
import SwiftUI
struct TodoListView: View {
    @StateObject var viewModel : TodoListViewViewModel
    @FirestoreQuery var items : [TodoListItems]
    
    init(userId : String){
        //user/userid/todos/<Enteries>
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/Todos")
        
        self._viewModel = StateObject(wrappedValue: TodoListViewViewModel(userId: userId))
    }
    var body: some View {
        NavigationView{
            VStack{
                
                List(items) {
                    items in TodoListitemView(item: items)
                        .swipeActions{
                            Button("Delete" , role : .destructive){
                                viewModel.delete(id: "items.id")
                            }.tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
                
            }
            .navigationTitle("To do list")
            .toolbar{
                Button{
                    //Action
                    viewModel.showingNewItemView = true
                }
            label:{
                Image(systemName: "plus")
            }
            }
        }
        .sheet(isPresented: $viewModel.showingNewItemView){
            NewItemsView(newItemPresented: $viewModel.showingNewItemView)
            
        }
    }
}

struct ToDoItemsView_Preview : PreviewProvider{
    static var previews: some View{
        TodoListView(userId: "feVCHlGig7PBcSCqaUfA5aevM0T2")
    }
}

