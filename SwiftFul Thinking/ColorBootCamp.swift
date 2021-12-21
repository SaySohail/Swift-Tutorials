//
//  ColorBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 31/07/21.
//

import SwiftUI

struct ColorBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
//                Color(#colorLiteral(red: 0.5960784314, green: 0.2941176471, blue: 0.2941176471, alpha: 1))
//                Color(UIColor.tertiarySystemGroupedBackground)
                Color("CustomColor")
            )
            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .shadow(color: Color("CustomColor").opacity(0.2), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 0.0 )
    }
}

struct ColorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootCamp()
            
            
    }
}
