//
//  CandidateLogin.swift
//  app
//
//  Created by Александр Клопышко on 10.01.2021.
//

import SwiftUI

struct CandidateLogin: View {
    @Environment(\.presentationMode) var presentationMode
    @State var user = ""
    @State var pass = ""
    var body: some View {
        VStack{
        VStack{
            logo()
                .padding(.top, -200)
        }
       // .padding()
            Text("Авторизуйтесь как кандидат")
            Text("Учетные данные необходимо получить у сотрудника кадровой службы")
                .font(.caption2)
                .multilineTextAlignment(.center)
                .padding()
            TextField("Введите логин", text: $user)
            TextField("Введите пароль", text: $pass)
            Button(action: {
                //action
            }) {
                Text("Войти")
            }.padding()
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                Button(action: {
                self.presentationMode.wrappedValue.dismiss()
                })
                {
                    HStack{
                Image(systemName: "arrow.left.circle")
                        Text("Назад")
                }
                })
        
        }
    }
}

struct CandidateLogin_Previews: PreviewProvider {
    static var previews: some View {
        CandidateLogin()
    }
}
