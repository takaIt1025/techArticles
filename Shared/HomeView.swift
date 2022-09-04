//
//  ContentView.swift
//  Shared
//
//  Created by Takaya Ito on 2022/08/27.
//

import SwiftUI

struct HomeView: View {
    var articles: [Article]
    var body: some View {
        NavigationView {
            List(0..<articles.count) { index in
                NavigationLink(destination: Text("\(articles[index].body)")) {
                    Text("\(articles[index].title)")
                }
            }
            .navigationTitle("Qiita")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                /// ナビゲーションバー左
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {}) {
                        Image(systemName: "magnifyingglass")
                    }
                }
                
            }
        }
        
    }

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(articles: Article.sampleData)
    }
}
