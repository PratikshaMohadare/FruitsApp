//
//  OnboardingView.swift
//  Fructus
//
//  Created by Pratiksha on 26/10/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    var fruits : [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            } // : ForLoop
        } // : TabView
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

// MARK: - Preview
#Preview {
    OnboardingView(fruits: fruitsData)
}
