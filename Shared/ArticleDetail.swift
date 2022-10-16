//
//  ArticleDetail.swift
//  techArticles-iOS
//
//  Created by Takaya Ito on 2022/09/04.
//

import SwiftUI

struct ArticleDetailView: View {
    
    var article: Article
   
    @State private var webViewHeight = CGFloat(100.0)
   
    var body: some View{
        ScrollView{

// TODO: 今後画面上部に記事のタグを表示するように修正する
//            ForEach(article.tags, id: \.self) { tag in
//                Text(tag.name)
//            }
            // TODO: タイトル、作成日のフォントなど調整する
            Text(article.title).font(.title)
            Text("作成日： \(article.created_at)")
            
        // TODO: HTML形式で取得したQiita記事をWebViewで表示。CSSを調整すること
            VStack(alignment: .leading){
                    WebView(text: article.rendered_body,
                                       dynamicHeight: $webViewHeight)
                                   .frame(height: webViewHeight)
            }
        }
        
    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetailView(article: Article.sampleData[0])
    }
}
