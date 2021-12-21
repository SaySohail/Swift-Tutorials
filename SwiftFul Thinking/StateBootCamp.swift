//
//  StateBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 02/08/21.
//

import SwiftUI

struct StateBootCamp: View {
    
  @State  var backgroundColor: Color = Color.green
  @State var myTitle: String = "My Title"
  @State var count: Int  = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.title)
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        myTitle = "Button 1 was pressed"
                        count+=1
                        
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .yellow
                        myTitle = "Button 2 was pressed"
                        count-=1
                    }
                }
            }
            .foregroundColor(.white)
    }
}

struct StateBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootCamp()
    }
}
}
