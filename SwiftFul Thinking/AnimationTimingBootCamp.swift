//
//  AnimationTimingBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 05/08/21.
//

import SwiftUI

struct AnimationTimingBootCamp: View {
    @State var isAnimating : Bool = false
    let timing : Double  = 5.0
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating  ? 350 : 50, height: 100)
                .animation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 1.0))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating  ? 350 : 50, height: 100)
//                .animation(Animation.linear(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating  ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating  ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating  ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
        }
      
        
    }
}

struct AnimationTimingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootCamp()
    }
}
