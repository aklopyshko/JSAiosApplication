//
//  WorkerLogin.swift
//  app
//
//  Created by Александр Клопышко on 10.01.2021.
//

import SwiftUI

struct WorkerLogin: View {
    @Environment(\.presentationMode) var presentationMode
    @State var user = ""
    @State var pass = ""
    @State var LoginSucc = false
    var body: some View {
       // NavigationView{
        VStack{
        VStack{
            logo()
                .padding(.top, -200)
        }
       // .padding()
            Text("Авторизуйтесь как сотрудник JSA")
                .padding()
            TextField("Введите логин", text: $user)
            TextField("Введите пароль", text: $pass)
            
            NavigationLink(
                destination: WorkerMainMenu(), isActive: $LoginSucc){EmptyView()}
            
            Button(action: {
                self.LoginSucc = true
                
            }) {
                Text("Войти")
            }.padding()
        }.navigationBarBackButtonHidden(true)
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
        //.navigationBarBackButtonHidden(true)
        
            /*}
       */
    }
}

struct WorkerLogin_Previews: PreviewProvider {
    static var previews: some View {
        WorkerLogin()
    }
}
