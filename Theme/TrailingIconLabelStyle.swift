//
//  TrailingIconLabelStyle.swift
//  techArticles-iOS (iOS)
//
//  Created by Takaya Ito on 2022/08/27.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
