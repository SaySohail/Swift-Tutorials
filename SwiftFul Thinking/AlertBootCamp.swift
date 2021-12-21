////
////  AlertBootCamp.swift
////  SwiftFul Thinking
////
////  Created by Sohail on 07/08/21.
////
//
//import SwiftUI
//
//struct AlertBootCamp: View {
//    @State var showAlert: Bool = false
//    @State var backgroundColor : Color = .yellow
//    @State var alertType: MyAlerts
//    enum MyAlerts {
//        case success
//        case error
//    }
//    var body: some View {
//        ZStack{
//            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//            VStack {
//                Button("Click Here") {
//                    alertType = .error
//                    showAlert.toggle()
//                }
//                .alert(isPresented: $showAlert, content: {
//        //            Alert(title: Text("There was an error"))
//                   getAlert()
//            })
//
//                Button("Click Here") {
//                    alertType = .success
//                    showAlert.toggle()
//                }
//                .alert(isPresented: $showAlert, content: {
//        //            Alert(title: Text("There was an error"))
//                   getAlert()
//            })
//            }
//        }
//
//
//    }
//
//    func getAlert() -> Alert {
//        return Alert (
//            title: Text("Do you wish to continue"),
//                  message: Text("Error description"),
//                  primaryButton: .destructive(Text("Delete"), action: {
//                    backgroundColor = .red
//                  }),
//                  secondaryButton: .cancel()
//
//        )
//    }
//}
//
//struct AlertBootCamp_Previews: PreviewProvider {
//    static var previews: some View {
//        AlertBootCamp()
//    }
//}
