//
//  techArticles_iOSApp.swift
//  Shared
//
//  Created by Takaya Ito on 2022/08/27.
//

import SwiftUI

@main
struct techArticles_iOSApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
