//
//  ActionSheetBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 07/08/21.
//

import SwiftUI

struct ActionSheetBootCamp: View {
    @State var showActionSheet: Bool = false
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
            Text("Swiftful Thinking")
            Text("hello")
            Toggle(isOn: .constant(true), label: {
                Text("Label")
            })
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
        }
    }
}

struct ActionSheetBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootCamp()
    }
}
