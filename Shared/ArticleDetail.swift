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
        VStack{
            Text(article.body)
        }
    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetailView(article: Article.sampleData[0])
    }
}
