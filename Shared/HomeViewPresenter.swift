//
//  HomeViewPresenter.swift
//  techArticles-iOS
//
//  Created by Takaya Ito on 2022/09/11.
//

import Foundation

class HomeViewPresenter: ObservableObject {
    @Published var articles: [Article] = []
    
    init() {
        load()
    }
    
    func load() {
        let url = URL(string: "https://qiita.com/api/v2/items?page=1&per_page=10")!
        URLSession.shared.dataTask(with: url) { data, response, error in
                    DispatchQueue.main.async {
                        self.articles = try! JSONDecoder().decode([Article].self, from: data!)
                    }
                }.resume()
    }
    
}
