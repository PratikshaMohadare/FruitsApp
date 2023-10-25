//
//  OnboardingView.swift
//  Fructus
//
//  Created by Pratiksha on 26/10/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            } // : ForLopp
        } // : TabView
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

// MARK: - Preview
#Preview {
    OnboardingView()
}
