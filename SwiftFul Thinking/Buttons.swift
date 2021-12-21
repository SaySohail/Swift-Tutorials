//
//  Buttons.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 02/08/21.
//

import SwiftUI

struct Buttons: View {
    @State   var title: String = "This is the Title"
    var body: some View {
    
        VStack(spacing: 20) {
            Text(title)
            Button(action: {
                self.title = "HeLLo"
            }, label: {
                Text("Save")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius:10)
                    )
            })
            
            Button(action: {
                self.title = "HeLLo"
            }, label: {
                
                Circle()
                    .fill(Color.white)
                    .frame(width:75, height:75)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
               
            })
            Button(action: {
                self.title = "Button 34"
            }, label: {
                
              Text("Finish")
                .font(.caption)
                .bold()
                .foregroundColor(.gray)
                .padding()
                .padding(.horizontal, 10)
                .background(
                    Capsule()
                        .stroke(Color.gray, lineWidth: 2.0)
                )
               
            })
          
        }
       
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
