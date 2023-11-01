//
//  SettingsLebelView.swift
//  Fructus
//
//  Created by Pratiksha on 01/11/23.
//

import SwiftUI

struct SettingsLebelView: View {
    // MARK: - PROPERTIES
    var labelText: String
    var labelImage : String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLebelView(labelText: "Fructus", labelImage: "info.circle")
}
