//
//  DebugTool.swift
//  FlexExample
//
//  Created by 柳元 俊輝 on 2022/12/04.
//

#if DEBUG
import FLEX
import SwiftUI
import Combine

final class DebugTool {
    private var subscriptions = Set<AnyCancellable>()

    func setupFlex() {
        FLEXManager.shared.registerGlobalEntry(withName: "SmpleViewに画面遷移") { hostViewController in
            let controller = UIHostingController(rootView: SampleView())
            hostViewController.present(controller, animated: true)
        }

        FLEXManager.shared.registerGlobalEntry(withName: "GithubAPIを叩く") { _ in
            GithubAPI.searchRepos(page: 1, perPage: 30)
                .sink(receiveCompletion: { completion in
                    switch completion {
                    case .finished:
                        break
                    case .failure(let error):
                        print("DEBUG: \(error.localizedDescription)")
                    }
                }) { repositories in
                    print("DEBUG: \(repositories)")
                }
                .store(in: &self.subscriptions)
        }
    }
}
#endif
