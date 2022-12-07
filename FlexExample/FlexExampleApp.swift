//
//  FlexExampleApp.swift
//  FlexExample
//
//  Created by 柳元 俊輝 on 2022/12/04.
//

import SwiftUI

@main
struct FlexExampleApp: App {
    init() {
        #if DEBUG
        let debugTool = DebugTool()
        debugTool.setupFlex()
        #endif
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
