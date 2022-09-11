//
//  article.swift
//  techArticles-iOS (iOS)
//
//  Created by Takaya Ito on 2022/09/03.
//

import Foundation

struct Article: Decodable, Identifiable{
    // 本文
    let body: String
    // この記事へのコメントの数
    let comments_count: Int
    // データが作成された日時
    let created_at: String
    // 記事の一意なID
    let id: String
    // この記事への「いいね」の数
    let likes_count: Int
    // 記事に付いたタグ一覧
//    let tags: Array<Dictionary<Dictionary<String,String>,Dictionary<String, Array<String>>>>
    let tags: Array<Tags>
    // 記事のタイトル
    let title: String
    // データが最後に更新された日時
    let updated_at: String
    // 記事のURL
    let url: String
    // 閲覧数
    let page_views_count: Int?
}

struct Tags: Codable, Hashable {
    let name: String
    let versions: Array<String>
}

extension Article {
    static let sampleData: [Article] =
    [
        Article(
            body: "<h1>記事2,APIから情報取得してからここの部分は修正</h1>",
            comments_count: 10,
            created_at: "2020年08月20日",
            id: "09c47ee536d8c0199034",
            likes_count: 52,
            tags: [Tags(name:"Api", versions: []),
                   Tags(name:"Qiita", versions: [])
                   ],
            title: "GASでQiita APIを叩いて結果をGoogleスプレッドシートに自動入力する手順を詳しくメモしておく",
            updated_at: "2021年03月26日",
            url: "https://qiita.com/kurarararara/items/09c47ee536d8c0199034",
            page_views_count: 121
        ),
        Article(
            body: "<h1>記事3,APIから情報取得してからここの部分は修正</h1>",
            comments_count: 3,
            created_at: "2022年05月18日",
            id: "fe09b2deb152b2d36c0d",
            likes_count: 2,
            tags: [Tags(name:"API", versions: ["tes","ttes"]),
                   Tags(name:"Swift", versions: ["tes","ttes"])
                   ],
            title: "[Swift]RxSwift×MoyaでAPI通信してみる",
            updated_at: "2022年05月18日",
            url: "https://qiita.com/taro-ken/items/fe09b2deb152b2d36c0d",
            page_views_count: 121
        )
    ]
}
