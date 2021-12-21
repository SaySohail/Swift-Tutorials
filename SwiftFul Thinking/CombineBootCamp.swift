//
//  CombineBootCamp.swift
//  SwiftFul Thinking
//
//  Created by Sohail on 03/08/21.
//

import SwiftUI
import Combine

struct PostModel: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
class DownloadWithCombineViewModel: ObservableObject {
    @Published var posts: [PostModel] = []
    var cancellables = Set<AnyCancellable>()
    
    init() {
        getPosts()
    }
    func getPosts() {
        guard  let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return}
        //1. create a publisher
        //2. put publisher on background thread
        URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .background))
        //3. receive on main thread
            .receive(on: DispatchQueue.main)
        //4. tryMap (check that the data is good)
            .tryMap{(data, response)-> Data in
                guard let response = response as? HTTPURLResponse,
                      response.statusCode >= 200 && response.statusCode < 300 else {
                    throw URLError(.badServerResponse)
                }
                return data
            }
        //5. decode data into post model
            .decode(type: [PostModel].self, decoder: JSONDecoder())
        //6. use the item, put into our app
            .sink{(completion) in
                print("Completeion: \(completion)")
            } receiveValue: { [weak self] (returnedPosts) in
                self?.posts = returnedPosts
            }
            .store(in: &cancellables)
    }
}
struct CombineBootCamp: View {
    @StateObject var vm = DownloadWithCombineViewModel()
    
    
    var body: some View {
        List {
            ForEach(vm.posts){ post in
                VStack{
                    Text(post.title)
                        .font(.headline)
                    Text(post.body)
                        .foregroundColor(.gray)
                    
                }
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CombineBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        CombineBootCamp()
    }
}
}
