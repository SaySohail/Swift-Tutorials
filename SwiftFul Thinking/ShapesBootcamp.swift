//
//  ShapesBootcamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 31/07/21.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            //.stroke(Color.red)
//            .stroke(Color.orange, style:StrokeStyle(lineWidth: 20, lineCap: .square, dash: [10]))
//            .trim(from: 0.2,to: 1.0)
//            .stroke(Color.purple, lineWidth: 50)
//            Ellipse()
//
//        Capsule(style: .circular)
//            .frame(width: 200, height: 100)
        VStack{
            HStack{
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 50, height:25)
                    .foregroundColor(.blue)
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 50, height:25)
                    .foregroundColor(.blue)
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 50, height:25)
                    .foregroundColor(.blue)
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 50, height:25)
                    .foregroundColor(.blue)
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 50, height:25)
                    .foregroundColor(.blue)
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 50, height:25)
                    .foregroundColor(.blue)

                
            }
                        RoundedRectangle(cornerRadius: 50)
                .trim(from: 0, to: 0.4)
                .frame(width: 200, height: 100)
                .foregroundColor(.red)
        }
        
        
      
            
                    
                    
        
        
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
