//
//  InitialiserBootcamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 02/08/21.
//

import SwiftUI

struct InitialiserBootcamp: View {
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
       
        self.count = count
//        self.title = title
//        if title == "Apples" {
//            self.backgroundColor = .red
//
//        } else {
//            self.backgroundColor = .orange
//        }
        if fruit == .apple {
            self.title = "Apple"
            self.backgroundColor = .red
        } else {
            self.title = "Orange"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack (spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
            
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitialiserBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitialiserBootcamp(count: 54, fruit: .orange)
            InitialiserBootcamp(count: 100, fruit: .apple)
        }
    }
}
