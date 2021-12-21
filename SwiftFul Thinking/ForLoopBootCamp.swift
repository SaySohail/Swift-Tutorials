//
//  ForLoopBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 02/08/21.
//

import SwiftUI

struct ForLoopBootCamp: View {
    let data: [String] = ["hi", "hello", "Welcome"]
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            
            }
        }
    }
}

struct ForLoopBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ForLoopBootCamp()
    }
}
