//
//  article.swift
//  techArticles-iOS (iOS)
//
//  Created by Takaya Ito on 2022/09/03.
//

import Foundation

struct Article {
    // 本文
    let body: String
    // この記事へのコメントの数
    let commentCount: Int
    // データが作成された日時
    let createdAt: Date
    // 記事の一意なID
    let id: String
    // この記事への「いいね」の数
    let likesCount: Int
    // 記事に付いたタグ一覧
    let tags: Array<String>
    // 記事のタイトル
    let title: String
    // データが最後に更新された日時
    let updatedAt: Date
    // 記事のURL
    let url: String
    // 閲覧数
    let pageViewsCount: Int?
}
