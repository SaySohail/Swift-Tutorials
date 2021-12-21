//
//  ScrollViewBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 02/08/21.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack {
                ForEach(0..<50) { index in
               Rectangle()
                .fill(Color.blue)
                .frame(width: 30,height: 300)

                }

            }
        })
        
            
        
    }
}

struct ScrollViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootCamp()
    }
}
