//
//  ExtractedSubview.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 05/08/21.
//

import SwiftUI

struct ExtractedSubview: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            HStack {
                MyItem(title: "Apples", count: 23, color: .red)
                MyItem(title: "Oranges", count: 122, color: .orange)
            }
           
            
        }
    }
}

struct ExtractedSubview_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedSubview()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
