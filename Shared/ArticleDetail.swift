//
//  ArticleDetail.swift
//  techArticles-iOS
//
//  Created by Takaya Ito on 2022/09/04.
//

import SwiftUI

struct ArticleDetailView: View {
    
    var article: Article
    
    var body: some View{
        ScrollView{

            ForEach(article.tags, id: \.self) { tag in
                Text(tag.name)
            }
            
            Text("タグ：　\(article.tags[0].name) 作成日： \(article.created_at) \n \(article.body)")
        }
        
    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetailView(article: Article.sampleData[0])
    }
}
