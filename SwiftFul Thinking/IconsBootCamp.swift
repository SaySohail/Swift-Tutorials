//
//  IconsBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 31/07/21.
//

import SwiftUI

struct IconsBootCamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fill)
//            .font(.system(size: 200))
            .foregroundColor(Color("CustomColor"))
            .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipped()
    }
}

struct IconsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootCamp()
            
    }
}
