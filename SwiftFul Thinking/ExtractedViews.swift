//
//  ExtractedViews.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 02/08/21.
//

import SwiftUI

struct ExtractedViews: View {
    @State var backgroundColor: Color = Color.red
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack{
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
              
                    Text("Press Me")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                
            })
        }
    }
    func buttonPressed () {
        backgroundColor = .yellow
    }
}



struct ExtractedViews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedViews()
    }
}
