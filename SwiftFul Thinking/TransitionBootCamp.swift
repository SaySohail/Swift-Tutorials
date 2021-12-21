//
//  TransitionBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 05/08/21.
//

import SwiftUI

struct TransitionBootCamp: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack (alignment: .bottom){
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.50)
                    .transition(.move(edge: .bottom))
                    .animation(.spring())
            }
            
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootCamp()
    }
}
