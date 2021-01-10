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
            NavigationLink(destination: WorkerLogin()) {
                Text("Я работаю в JSA")
            }
            .padding()
            
            NavigationLink(destination: CandidateLogin()) {
                Text("Я хочу работать в JSA")
            }
            .padding()
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
