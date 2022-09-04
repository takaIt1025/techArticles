//
//  article.swift
//  techArticles-iOS (iOS)
//
//  Created by Takaya Ito on 2022/09/03.
//

import Foundation

struct Article: Identifiable{
    // 本文
    let body: String
    // この記事へのコメントの数
    let commentCount: Int
    // データが作成された日時
    let createdAt: String
    // 記事の一意なID
    let id: String
    // この記事への「いいね」の数
    let likesCount: Int
    // 記事に付いたタグ一覧
    let tags: Array<String>
    // 記事のタイトル
    let title: String
    // データが最後に更新された日時
    let updatedAt: String
    // 記事のURL
    let url: String
    // 閲覧数
    let pageViewsCount: Int?
}


extension Article {
    static let sampleData: [Article] =
    [
        Article(
            body: "<h1>記事1,APIから情報取得してからここの部分は修正</h1>",
            commentCount: 12,
            createdAt: "2018年06月29日",
            id: "0a12079671750c39fbfa",
            likesCount: 546,
            tags: ["Qiita","Python","QiitaAPI", "データ分析", "Python3"],
            title: "Qiita殿堂入り記事ランキングを作った物語",
            updatedAt: "2018年08月05日",
            url: "https://qiita.com/youwht/items/0a12079671750c39fbfa",
            pageViewsCount: 98
        ),
        Article(
            body: "<h1>記事2,APIから情報取得してからここの部分は修正</h1>",
            commentCount: 10,
            createdAt: "2020年08月20日",
            id: "09c47ee536d8c0199034",
            likesCount: 52,
            tags: ["Qiita", "JavaScript", "GoogleAppsScript", "gas", "QiitaAPI"],
            title: "GASでQiita APIを叩いて結果をGoogleスプレッドシートに自動入力する手順を詳しくメモしておく",
            updatedAt: "2021年03月26日",
            url: "https://qiita.com/kurarararara/items/09c47ee536d8c0199034",
            pageViewsCount: 121
        ),
        Article(
            body: "<h1>記事3,APIから情報取得してからここの部分は修正</h1>",
            commentCount: 3,
            createdAt: "2022年05月18日",
            id: "fe09b2deb152b2d36c0d",
            likesCount: 2,
            tags: ["api", "QiitaAPI", "Swift", "RxSwift", "moya"],
            title: "[Swift]RxSwift×MoyaでAPI通信してみる",
            updatedAt: "2022年05月18日",
            url: "https://qiita.com/taro-ken/items/fe09b2deb152b2d36c0d",
            pageViewsCount: 121
        )
    ]
}
