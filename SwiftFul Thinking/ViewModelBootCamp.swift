//
//  ViewModelBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 06/08/21.
//

import SwiftUI

struct fruitModel: Identifiable {
    let id: String  = UUID().uuidString
    let name: String
    let count: Int
}
class FruitViewModel: ObservableObject {
@Published var fruitArray: [fruitModel] = []
    @Published var isLoading: Bool = false

func getFruits() {
    let fruit1 = fruitModel(name: "Orange", count: 221)
    let fruit2 = fruitModel(name: "Watermelon", count: 12)
    let fruit3 = fruitModel(name: "bannaa", count: 122)
    let fruit4 = fruitModel(name: "peaches", count: 43)
    
    isLoading = true
    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
        
        self.fruitArray.append(fruit1)
        self.fruitArray.append(fruit2)
        self.fruitArray.append(fruit3)
        self.fruitArray.append(fruit4)
        self.isLoading = false
        
    }
}

func deleteFruit(index: IndexSet) {
    fruitArray.remove(atOffsets: index)
}
}


struct ViewModelBootCamp: View {
    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {}
                
                ForEach(fruitViewModel.fruitArray) { fruit in
                    if fruitViewModel.fruitArray.count > 2 {
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            Text("\(fruit.name)")
                                .font(.headline)
                                .bold()
                        }
                    }
                    
                }
                .onDelete(perform: fruitViewModel.deleteFruit)
                
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(leading: EditButton())
            .onAppear {
                fruitViewModel.getFruits()
            }
            
        }
    }
    func move(indices: IndexSet, newOffset: Int) {
        fruitViewModel.fruitArray.move(fromOffsets: indices, toOffset: newOffset)
    }


}

struct ViewModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootCamp()
    }
}
