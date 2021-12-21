//
//  TabsBc.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 07/08/21.
//

import SwiftUI

struct TabsBc: View {
    @State var myText: String? = nil
    @State var isLoading: Bool = false
    @State var currentUserId: String? = nil
    var body: some View {
    
//        TabView {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                 .tabItem {
//                    Image(systemName: "globe")
//                    Text("World")
//                }
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("person")
//                }
//                .accentColor(.red)
//        }
//        TabView {
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.green)
//        }
//        .frame(height: 300)
//        .tabViewStyle(PageTabViewStyle())
        NavigationView{
            
            ScrollView {
                VStack(spacing: 20)
                {
                    Text("Safe coding!")
                    if let text = myText {
                        Text(text)
                            .foregroundColor(.primary)
                       
                    }
                    if isLoading {
                        ProgressView()
                    }
                        
                    
                }
                .onAppear{
                    loadData()
                }
            }
            
                
         
            
        }
        .navigationTitle("Dark Mode Boot Camp")
        
    }
    func loadData() {
        if let userId = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                myText = "This is the new data! \(userId)"
                isLoading = false
            }
        } else {
            myText = "ErrorN"
        }
        
    }
}

struct TabsBc_Previews: PreviewProvider {
    static var previews: some View {
        TabsBc()
            
    }
}
