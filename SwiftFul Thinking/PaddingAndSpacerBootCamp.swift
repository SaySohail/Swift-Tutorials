//
//  PaddingAndSpacerBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 31/07/21.
//

import SwiftUI

struct PaddingAndSpacerBootCamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.yellow)
//            .padding(.all,10)
//            .padding(.leading,10)
//            .background(
//                Color.blue
//
//            )
        
        VStack (alignment: .leading){
            Text("Helo world!")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("Description of what wwe will do on this screen we will align the text in the leading edge.")
               
                
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0, y: 10)
        )
        .padding()
            
    }
}

struct PaddingAndSpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootCamp()
    }
}
