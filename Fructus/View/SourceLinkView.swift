//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Pratiksha on 27/10/23.
//

import SwiftUI

struct SourceLinkView: View {
    
    var body: some View {
        GroupBox {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL.init(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
}
