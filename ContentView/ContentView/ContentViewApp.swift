//
//  Aula01App.swift
//  Aula01
//
//  Created by Léo on 31/08/23.
//

import SwiftUI

@main
struct ContentViewApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        }
    }
}
