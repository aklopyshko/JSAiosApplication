//
//  ContentView.swift
//  app
//
//  Created by Александр Клопышко on 10.01.2021.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView{
        VStack{
        VStack{
            logo()
                .padding(.top, -200)
        }
       // .padding()
            Text("Вы работник или кандидат?")
                .padding()
            NavigationLink(destination: WorkerLogin()) {
                Text("Я работаю в JSA")
            }
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.gray]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            
            NavigationLink(destination: CandidateLogin()) {
                Text("Я хочу работать в JSA")
            }
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.gray]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
