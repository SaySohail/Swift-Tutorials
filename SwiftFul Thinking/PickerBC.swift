//
//  PickerBC.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 07/08/21.
//

import SwiftUI

struct PickerBC: View {
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = ["Most Recent", "Most Popular" , "Most Liked"]
    var body: some View {
//        VStack {
//            HStack {
//                Text("Age : ")
//                Text(selection)
//            }
//
//            Picker(selection: $selection, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/, content: {
//                Text("1").tag("1")
//                Text("2").tag("2")
//                Text("1").tag("3")
//                Text("2").tag("2")
//                Text("1").tag("1")
//                Text("2").tag("2")
//            })
//
//        }
        Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: HStack {
            Text("Filter: ")
            Text(selection)
        }
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .padding(.horizontal)
        .background(Color.blue)
        .cornerRadius(10)
        .shadow(color: Color.blue.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
        
        , content: {
            ForEach(filterOptions, id: \.self) { option in
                HStack {
                    Text(option)
                    Image(systemName: "heart.fill")
                }
                .tag(option)
            }
            
        })
        .pickerStyle(MenuPickerStyle())
    }
}

struct PickerBC_Previews: PreviewProvider {
    static var previews: some View {
        PickerBC()
    }
}
