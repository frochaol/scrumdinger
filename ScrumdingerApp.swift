//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Fernando Rocha Olivera on 29/03/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @StateObject private var store = ScrumStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumViews(scrums: $store.scrums)
                    .task {
                        do {
                            try await store.load()
                        } catch {
                            fatalError(error.localizedDescription)
                        }
                    }
            }
        }
    }
}
