//
//  HeaderView.swift
//  TodoList
//
//  Created by Tufail Ahmad on 15/10/23.
//

import SwiftUI

struct HeaderView: View {
    let title : String
    let Subtitle : String
    let angle : Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
                
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundStyle(.white)
                    .bold()
                
                Text(Subtitle)
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
                    .bold()
            }
            .padding(.top , 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3 , height: 350)// width of device
        .offset(y: -150)
        
    }
}

#Preview {
    HeaderView(title: "Title", Subtitle: "Subtitle", angle: 15, background: .blue)
}
