//
//  SwiftUIView.swift
//  Decor
//
//  Created by Beka Akramov on 30.03.2024.
//

import SwiftUI

struct UserNameView: View {
    
    @State private var userName = ""
            
    var body: some View {
        
        let condition = userName.isEmpty
        
        VStack(spacing: 13) {
            
            Text("Как к вам обращаться ?")
                .primary()
            
            Text("Скажите нам, пожалуйста, как к вам обращаться?")
                .secondary()
            
            TextField("Введите имя", text: $userName)
                .padding()
                .frame(maxWidth: .infinity, minHeight: 55)
                .clipShape(RoundedRectangle(cornerRadius: 18))
                .overlay{
                    RoundedRectangle(cornerRadius: 18)
                        .stroke(Color.gray, lineWidth: 1)
                }
            
            Button("Подтвердить") {
                print("Потверждаю что братишка поменял Ник")
            }
            .frame(maxWidth: .infinity, minHeight: 62)
            .foregroundStyle(Color.white)
            .background(
                condition
                ? Color("color_bg_input")
                : Color("raspberry")
            )
            .overlay{
                RoundedRectangle(cornerRadius: 14)
                    .stroke(Color.gray, lineWidth: 1)
            }
            .clipShape(RoundedRectangle(cornerRadius: 14))
            .disabled(condition)
            .tint(.primary)
        }
    }
}

#Preview {
    UserNameView()
        .padding()
}
