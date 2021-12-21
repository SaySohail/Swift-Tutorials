//
//  GeomertyReaderBC.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 08/08/21.
//

import SwiftUI

struct GeomertyReaderBC: View {
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0){
                Rectangle()
                    .fill(Color.red)
                    .frame(width: geometry.size.width * 0.66666 )
                Rectangle()
                    .fill(Color.blue)
            }
            .ignoresSafeArea()
        }
       
    }
}

struct GeomertyReaderBC_Previews: PreviewProvider {
    static var previews: some View {
        GeomertyReaderBC()
    }
}
