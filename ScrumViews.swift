//
//  ScrumViews.swift
//  Scrumdinger
//
//  Created by Fernando Rocha Olivera on 4/04/23.
//

import SwiftUI

struct ScrumViews: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus")
            }
            .accessibilityLabel("New Scrum")
        }
    }
}

struct ScrumViews_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumViews(scrums: DailyScrum.sampleData)
        }
    }
}
