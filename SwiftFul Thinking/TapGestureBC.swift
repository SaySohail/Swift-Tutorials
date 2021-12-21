//
//  TapGestureBC.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 08/08/21.
//

import SwiftUI

struct TapGestureBC: View {
    @State var isSelected: Bool = false
    var body: some View {
        VStack (spacing: 40){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.red: Color.green)
            Button(action: {
                isSelected.toggle()
            }
                   , label: {
                Text("Tap Gesture")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25.0)
                    
            })
        }
        .padding(40)
    }
}

struct TapGestureBC_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBC()
    }
}
