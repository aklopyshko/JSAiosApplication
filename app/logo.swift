//
//  logo.swift
//  app
//
//  Created by Александр Клопышко on 10.01.2021.
//

import SwiftUI

struct logo: View {
    var body: some View {
        Image("logoJSA")
            .resizable()
            .frame(width: 130.0, height: 130.0)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.gray,lineWidth:4))
            .imageScale(.small)
    }
}

struct logo_Previews: PreviewProvider {
    static var previews: some View {
        logo()
    }
}
