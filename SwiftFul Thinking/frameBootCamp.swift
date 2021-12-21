//
//  frameBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 31/07/21.
//

import SwiftUI

struct frameBootCamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.green)
//            .frame(width: 300, height: 300, alignment: .center)
//            .background(Color.red)
            .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct frameBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        frameBootCamp()
    }
}
