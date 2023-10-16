//
//  TLButton.swift
//  TodoList
//
//  Created by Tufail Ahmad on 15/10/23.
//

import SwiftUI

struct TLButton: View {
    
    let title : String
    let backgroud : Color
    
    let action : () ->Void
    var body: some View {
        
        Button{
        //Action
            action()
        }label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
                
            }
        }
        
    }
}

#Preview {
    TLButton(title: "value", backgroud: .pink){
        //action
    }
}
