//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Pratiksha on 01/11/23.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination : String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)

            HStack {
                Text(name)
                    .foregroundStyle(Color.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil{
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.sqaure")
                        .foregroundStyle(Color.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SettingsRowView(name: "Developer", content: "Pratiksha / Mini")
        .previewLayout(.sizeThatFits)
//        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
}

#Preview(traits: .sizeThatFitsLayout) {
    SettingsRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "swiftuimasterclass.com")
        .previewLayout(.sizeThatFits)
//        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
}
