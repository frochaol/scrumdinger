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
                CardView(scrum: scrum)
                    .listRowBackground(scrum.theme.mainColor)
            }
        }
    }
}

struct ScrumViews_Previews: PreviewProvider {
    static var previews: some View {
        ScrumViews(scrums: DailyScrum.sampleData)
    }
}
