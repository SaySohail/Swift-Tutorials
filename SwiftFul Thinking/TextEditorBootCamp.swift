//
//  TextEditorBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 07/08/21.
//

import SwiftUI

struct TextEditorBootCamp: View {
    @State var textEditorText: String = ""
    var body: some View {
        NavigationView {
            VStack{
                TextEditor(text: $textEditorText)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
            }
            .navigationTitle("Text Editor")
        }
        
    }
}

struct TextEditorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootCamp()
    }
}
