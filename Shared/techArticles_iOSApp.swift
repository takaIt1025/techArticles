//
//  techArticles_iOSApp.swift
//  Shared
//
//  Created by Takaya Ito on 2022/08/27.
//

import SwiftUI

@main
struct techArticles_iOSApp: App {
    
    @State var selectedTag = 1
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTag) {
                HomeView()
                    .tabItem{
                        Image(systemName: "house")
                        Text("ホーム")
                    }.tag(1)
                Text("お気に入り")
                    .tabItem{
                        Text("お気に入り")
                    }.tag(2)
                Text("本")
                    .tabItem{
                        Text("本")
                    }.tag(3)
                Text("記事一覧")
                    .tabItem{
                        Text("記事リンク")
                    }.tag(4)
            }
        }
    }
}
