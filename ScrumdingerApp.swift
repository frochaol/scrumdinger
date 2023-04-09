//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Fernando Rocha Olivera on 29/03/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumViews(scrums: $scrums)
            }
        }
    }
}
