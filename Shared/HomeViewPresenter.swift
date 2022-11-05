//
//  HomeViewPresenter.swift
//  techArticles-iOS
//
//  Created by Takaya Ito on 2022/09/11.
//

import Foundation
import SwiftUI

class HomeViewPresenter: ObservableObject { 
    @Published var articles: [Article] = []
    @Published var isError = false
    
    init() {
        load()
    }
    
    
    func load() {
        print("####test")
        let url = URL(string: "https://qiita.com/api/v2/items?page=1&per_page=10")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                // API通信ができなかったとき、isErrorをtrueに変更
                DispatchQueue.main.async {
                    self.isError = true
                }
                return
            }
            DispatchQueue.main.async {
                self.articles = try! JSONDecoder().decode([Article].self, from: data)
            }
        }.resume()
    }
    
}
