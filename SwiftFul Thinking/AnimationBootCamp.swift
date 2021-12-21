//
//  AnimationBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 05/08/21.
//

import SwiftUI

struct AnimationBootCamp: View {
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack{
            Button("Button") {
                withAnimation(
                    Animation
                        .default) {
                    isAnimated.toggle()
                }
                
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50: 26)
                .fill(isAnimated ? Color.green : Color.red)
                .frame(
                    width: isAnimated ? 100: 300,
                    height: isAnimated ? 100: 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

struct AnimationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootCamp()
    }
}
