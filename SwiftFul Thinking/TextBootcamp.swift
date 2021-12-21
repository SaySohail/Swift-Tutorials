//
//  TextBootcamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 31/07/21.
//

import SwiftUI

struct TextBootcamp: View {
    let value:String = "hei"
    var body: some View {
        Text(value)
            .font(.system(size: 22, weight: .semibold, design: .monospaced))
            //.baselineOffset(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            //.kerning(12) spacing between letters
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 100, alignment: .center)
            .foregroundColor(.red)
            .minimumScaleFactor(0.1)
            
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
