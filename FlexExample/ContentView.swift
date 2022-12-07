//
//  ContentView.swift
//  FlexExample
//
//  Created by 柳元 俊輝 on 2022/12/04.
//

import SwiftUI
//import Combine

struct ContentView: View {
//    @State private var repositories: [Repository] = []
//    @State private var subscriptions = Set<AnyCancellable>()
//    @State private var showingAlert = false
//    @State private var errorMessage = ""

    var body: some View {
        Text("Content View")

//        List(repositories) { repository in
//            VStack(alignment: .leading) {
//                Text(repository.name)
//                    .font(Font.system(size: 24).bold())
//                Text(repository.description ?? "")
//                Text("⭐️: \(repository.stargazersCount)")
//            }
//        }.onAppear {
//            GithubAPI.searchRepos(page: 1, perPage: 30)
//                .sink(receiveCompletion: { completion in
//                    switch completion {
//                    case .finished:
//                        break
//                    case let .failure(error):
//                        showingAlert = true
//                        errorMessage = error.localizedDescription
//                    }
//                }, receiveValue: { repositories in
//                    self.repositories = repositories
//                })
//                .store(in: &self.subscriptions)
//        }
//        .alert(isPresented: $showingAlert) {
//            Alert(
//                title: Text("Error"),
//                message: Text(errorMessage),
//                dismissButton: .default(Text("Close")))
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
