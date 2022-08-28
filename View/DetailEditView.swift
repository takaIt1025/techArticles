//
//  DetailEditView.swift
//  techArticles-iOS (iOS)
//
//  Created by Takaya Ito on 2022/08/28.
//

import SwiftUI

struct DetailEditView: View {
    @State private var data = DailyScrum.Data()
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $data.title)
                HStack {
                    Slider(value: $data.lengthInminutes, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    Spacer()
                    Text("\(Int(data.lengthInminutes)) minutes")
                }
            }
        }
    }
}

struct DetailEditView_Preview: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
