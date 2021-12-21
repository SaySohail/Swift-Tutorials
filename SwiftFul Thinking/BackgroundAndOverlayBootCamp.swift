//
//  BackgroundAndOverlayBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 31/07/21.
//

import SwiftUI

struct BackgroundAndOverlayBootCamp: View {
    var body: some View {
//      Rectangle()
//        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
//        .overlay(
//            Rectangle()
//            .fill(Color.blue)
//                .frame(width: 50, height: 50)
//            , alignment: .topLeading
//
//
//
//        )
//        .background(
//            Rectangle()
//            .fill(Color.red)
//                .frame(width: 150, height: 150)
//            , alignment: .bottomTrailing
//        )
        Image(systemName: "heart.fill")
            .scaledToFit()
            .font(.system(size: 50))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)), Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    )
                    .frame(width:100, height: 100)
                    .shadow(color: Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 0.4289675075)), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    
                            )
                        , alignment: .bottomTrailing
                    )
            )
    }
}

struct BackgroundAndOverlayBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootCamp()
    }
}
