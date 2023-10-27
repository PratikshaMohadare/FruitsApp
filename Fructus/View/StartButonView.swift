//
//  StartButonView.swift
//  Fructus
//
//  Created by Pratiksha on 11/10/23.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding : Bool?
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().stroke(lineWidth: 1.25)
            )
        }) // : BUtton
        .accentColor(.white)
    }
}

// MARK: - Preview
#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
