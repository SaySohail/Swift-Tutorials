//
//  ImageBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 31/07/21.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        Image("uber")
            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            .foregroundColor(Color("CustomColor"))
        
    }
}

struct ImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootCamp()
    }
}
